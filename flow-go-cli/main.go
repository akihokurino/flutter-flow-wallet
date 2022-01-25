package main

import (
	"context"
	"encoding/hex"
	"fmt"
	"time"

	"github.com/onflow/cadence"

	"github.com/onflow/flow-go-sdk/templates"

	"github.com/onflow/flow-go-sdk/crypto"

	"github.com/onflow/flow-go-sdk"

	"google.golang.org/grpc"

	"github.com/onflow/flow-go-sdk/client"

	jsoncdc "github.com/onflow/cadence/encoding/json"

	"github.com/ethereum/go-ethereum/rlp"
)

func main() {
	ctx := context.Background()
	testnet := "127.0.0.1:3569"

	flowCli, err := client.New(testnet, grpc.WithInsecure())
	if err != nil {
		panic(err)
	}

	block, err := flowCli.GetLatestBlock(ctx, true)
	if err != nil {
		panic(err)
	}

	defaultAddress := flow.HexToAddress("f8d6e0586b0a20c7")
	defaultAccount, err := flowCli.GetAccountAtLatestBlock(ctx, defaultAddress)
	if err != nil {
		panic(err)
	}

	defaultPrivateKey, err := crypto.DecodePrivateKeyHex(crypto.ECDSA_P256, "a0b6509054e06924fc1b9052676e7adbdda3f12fae20e8fa7f11d0bd162ab0d7")
	if err != nil {
		panic(err)
	}
	defaultAccountKey := defaultAccount.Keys[0]
	defaultSigner := crypto.NewInMemorySigner(defaultPrivateKey, defaultAccountKey.HashAlgo)

	//seed := make([]byte, crypto.MinSeedLength)
	//_, _ = rand.Read(seed)
	//nextPrivateKey, err := crypto.GeneratePrivateKey(crypto.ECDSA_P256, seed)
	nextPrivateKey, err := crypto.DecodePrivateKeyHex(crypto.ECDSA_P256, "83334c1c0204901b2b26ce5ea723cfa19592dc4a0c361f8e143daf1ad197cf42")
	if err != nil {
		panic(err)
	}

	nextAccountKey := flow.NewAccountKey().
		FromPrivateKey(nextPrivateKey).
		SetHashAlgo(crypto.SHA3_256).
		SetWeight(flow.AccountKeyWeightThreshold)

	fmt.Println("-----------------------------------")
	fmt.Println("公開鍵")
	fmt.Println(nextPrivateKey.PublicKey().String())

	// FIXME: ここがdartで違う
	fmt.Println("公開鍵エンコード")
	fmt.Println(nextPrivateKey.PublicKey().Encode())

	fmt.Println("アカウントキーRLPエンコード")
	fmt.Println(nextAccountKey.Encode())

	fmt.Println("アカウントキーRLPエンコード（ハードコード確認）")
	test1, _ := rlp.EncodeToBytes(&rlpTest1{
		RawPublicKey: "0xf44c3090debfe7e17a6a039c460d816129e569c1366b4de68f23fecf9ad7a7efff7ad0c640b3fa7dbe51fc50ff3d7ea5d1e61f4e4cd7209e6f74df73c0832edd",
		SigAlgo:      2,
		HashAlgo:     3,
		Weight:       1000,
	})
	fmt.Println(test1)

	test2, _ := rlp.EncodeToBytes(&rlpTest2{
		RawPublicKey: []byte{244, 76, 48, 144, 222, 191, 231, 225, 122, 106, 3, 156, 70, 13, 129, 97, 41, 229, 105, 193, 54, 107, 77, 230, 143, 35, 254, 207, 154, 215, 167, 239, 255, 122, 208, 198, 64, 179, 250, 125, 190, 81, 252, 80, 255, 61, 126, 165, 209, 230, 31, 78, 76, 215, 32, 158, 111, 116, 223, 115, 192, 131, 46, 221},
		SigAlgo:      2,
		HashAlgo:     3,
		Weight:       1000,
	})
	fmt.Println(test2)

	// ここがdartで違う
	fmt.Println("アカウントキーエンコード")
	fmt.Println(hex.EncodeToString(nextAccountKey.Encode()))

	fmt.Println("アカウントキーエンコード（ハードコード確認）")
	fmt.Println(hex.EncodeToString([]byte{248, 137, 248, 130, 48, 120, 102, 52, 52, 99}))
	fmt.Println("-----------------------------------")

	nextAccountKeys := []*flow.AccountKey{nextAccountKey}
	contracts := []templates.Contract{}
	publicKeys := make([]cadence.Value, len(nextAccountKeys))
	for i, accountKey := range nextAccountKeys {
		keyHex := hex.EncodeToString(accountKey.Encode())
		publicKeys[i] = cadence.String(keyHex)
	}
	contractKeyPairs := make([]cadence.KeyValuePair, len(contracts))
	for i, contract := range contracts {
		contractKeyPairs[i] = cadence.KeyValuePair{
			Key:   cadence.String(contract.Name),
			Value: cadence.String(contract.SourceHex()),
		}
	}
	cadencePublicKeys := cadence.NewArray(publicKeys)
	cadenceContracts := cadence.NewDictionary(contractKeyPairs)
	fmt.Println(string(jsoncdc.MustEncode(cadencePublicKeys)))
	fmt.Println(string(jsoncdc.MustEncode(cadenceContracts)))

	tx := templates.CreateAccount([]*flow.AccountKey{nextAccountKey}, nil, defaultAddress)
	tx.SetProposalKey(
		defaultAddress,
		defaultAccountKey.Index,
		defaultAccountKey.SequenceNumber,
	)
	tx.SetPayer(defaultAddress)
	tx.SetReferenceBlockID(block.ID)

	if err := tx.SignEnvelope(defaultAddress, defaultAccountKey.Index, defaultSigner); err != nil {
		panic(err)
	}

	if err := flowCli.SendTransaction(ctx, *tx); err != nil {
		panic(err)
	}

	accountCreationTxRes := WaitForSeal(ctx, flowCli, tx.ID())
	var nextAddress flow.Address

	for _, event := range accountCreationTxRes.Events {
		if event.Type == flow.EventAccountCreated {
			accountCreatedEvent := flow.AccountCreatedEvent(event)
			nextAddress = accountCreatedEvent.Address()
		}
	}

	fmt.Printf("account created with address:%s, private key: %s", nextAddress.Hex(), nextPrivateKey.String())
}

func WaitForSeal(ctx context.Context, c *client.Client, id flow.Identifier) *flow.TransactionResult {
	result, err := c.GetTransactionResult(ctx, id)
	if err != nil {
		panic(err)
	}

	fmt.Printf("waiting for transaction %s to be sealed...\n", id)

	for result.Status != flow.TransactionStatusSealed {
		time.Sleep(time.Second)
		fmt.Print(".")
		result, err = c.GetTransactionResult(ctx, id)
		if err != nil {
			panic(err)
		}
	}

	fmt.Println()
	fmt.Printf("transaction %s sealed\n", id)
	return result
}

type rlpTest1 struct {
	RawPublicKey string
	SigAlgo      uint
	HashAlgo     uint
	Weight       uint
}

type rlpTest2 struct {
	RawPublicKey []byte
	SigAlgo      uint
	HashAlgo     uint
	Weight       uint
}
