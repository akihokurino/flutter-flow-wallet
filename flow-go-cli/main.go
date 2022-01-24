package main

import (
	"context"
	"crypto/rand"
	"fmt"
	"time"

	"github.com/onflow/flow-go-sdk/templates"

	"github.com/onflow/flow-go-sdk/crypto"

	"github.com/onflow/flow-go-sdk"

	"google.golang.org/grpc"

	"github.com/onflow/flow-go-sdk/client"
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

	fmt.Printf("block ID: %s\n", block.ID)
	fmt.Printf("block height: %d\n", block.Height)
	fmt.Printf("block timestamp: %s\n", block.Timestamp)

	defaultAddress := flow.HexToAddress("f8d6e0586b0a20c7")
	defaultAccount, err := flowCli.GetAccountAtLatestBlock(ctx, defaultAddress)
	if err != nil {
		panic(err)
	}

	fmt.Printf("default account Address: %s\n", defaultAccount.Address.String())
	fmt.Printf("default account Balance: %d\n", defaultAccount.Balance)
	fmt.Printf("default account Contracts: %d\n", len(defaultAccount.Contracts))
	fmt.Printf("default account Keys: %d\n", len(defaultAccount.Keys))

	defaultPrivateKey, err := crypto.DecodePrivateKeyHex(crypto.ECDSA_P256, "0bb993fd6e558794d373ad9c629b9a7a176ae0d437e9b227103af34d95454e70")
	if err != nil {
		panic(err)
	}
	defaultAccountKey := defaultAccount.Keys[0]
	defaultSigner := crypto.NewInMemorySigner(defaultPrivateKey, defaultAccountKey.HashAlgo)

	seed := make([]byte, crypto.MinSeedLength)
	_, _ = rand.Read(seed)
	nextPrivateKey, err := crypto.GeneratePrivateKey(crypto.ECDSA_P256, seed)

	nextAccountKey := flow.NewAccountKey().
		FromPrivateKey(nextPrivateKey).
		SetHashAlgo(crypto.SHA3_256).
		SetWeight(flow.AccountKeyWeightThreshold)

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
