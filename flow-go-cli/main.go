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

	defaultAddress := flow.HexToAddress("f8d6e0586b0a20c7")
	defaultPrivateKey, _ := crypto.DecodePrivateKeyHex(crypto.ECDSA_P256, "a0b6509054e06924fc1b9052676e7adbdda3f12fae20e8fa7f11d0bd162ab0d7")

	flowCli, _ := client.New(testnet, grpc.WithInsecure())

	block, _ := flowCli.GetLatestBlock(ctx, true)
	defaultAccount, _ := flowCli.GetAccountAtLatestBlock(ctx, defaultAddress)

	defaultAccountKey := defaultAccount.Keys[0]

	//seed := make([]byte, crypto.MinSeedLength)
	//_, _ = rand.Read(seed)
	//nextPrivateKey, _ := crypto.GeneratePrivateKey(crypto.ECDSA_P256, seed)
	nextPrivateKey, _ := crypto.DecodePrivateKeyHex(crypto.ECDSA_P256, "83334c1c0204901b2b26ce5ea723cfa19592dc4a0c361f8e143daf1ad197cf42")

	nextAccountKey := flow.NewAccountKey().
		FromPrivateKey(nextPrivateKey).
		SetHashAlgo(crypto.SHA3_256).
		SetWeight(flow.AccountKeyWeightThreshold)

	fmt.Println("-----------------------------------")
	fmt.Println("公開鍵")
	fmt.Println(nextPrivateKey.PublicKey().String())

	fmt.Println("公開鍵エンコード")
	fmt.Println(nextPrivateKey.PublicKey().Encode())

	fmt.Println("アカウントキーRLPエンコード")
	fmt.Println(nextAccountKey.Encode())

	fmt.Println("アカウントキーRLPエンコード（ハードコード確認）")
	rlpEncoded, _ := rlp.EncodeToBytes(&rlpTest1{
		RawPublicKey: "0xf44c3090debfe7e17a6a039c460d816129e569c1366b4de68f23fecf9ad7a7efff7ad0c640b3fa7dbe51fc50ff3d7ea5d1e61f4e4cd7209e6f74df73c0832edd",
		SigAlgo:      2,
		HashAlgo:     3,
		Weight:       1000,
	})
	fmt.Println(rlpEncoded)

	fmt.Println("アカウントキーエンコード")
	fmt.Println(hex.EncodeToString(nextAccountKey.Encode()))

	fmt.Println("アカウントキーエンコード（ハードコード確認）")
	fmt.Println(hex.EncodeToString([]byte{248, 137, 248, 130, 48, 120, 102, 52, 52, 99}))
	fmt.Println("-----------------------------------")

	nextAccountKeys := []*flow.AccountKey{nextAccountKey}
	contracts := make([]templates.Contract, 0)
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
	fmt.Println("公開鍵変数")
	fmt.Println(string(jsoncdc.MustEncode(cadencePublicKeys)))
	fmt.Println("コントラクト変数")
	fmt.Println(string(jsoncdc.MustEncode(cadenceContracts)))

	createAccountTx := templates.CreateAccount([]*flow.AccountKey{nextAccountKey}, nil, defaultAddress)
	createAccountTx.SetProposalKey(
		defaultAddress,
		defaultAccountKey.Index,
		defaultAccountKey.SequenceNumber,
	)
	createAccountTx.SetPayer(defaultAddress)
	createAccountTx.SetReferenceBlockID(block.ID)

	defaultSigner := crypto.NewInMemorySigner(defaultPrivateKey, defaultAccountKey.HashAlgo)
	if err := createAccountTx.SignEnvelope(defaultAddress, defaultAccountKey.Index, defaultSigner); err != nil {
		panic(err)
	}

	if err := flowCli.SendTransaction(ctx, *createAccountTx); err != nil {
		panic(err)
	}

	accountCreationTxRes := WaitForSeal(ctx, flowCli, createAccountTx.ID())
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
