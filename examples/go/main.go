package main

import (
	"github.com/dprzybyl/pulumi-dsa/sdk/go/dsa"
	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		myRandomResource, err := dsa.NewRandom(ctx, "myRandomResource", &dsa.RandomArgs{
			Length: pulumi.Int(24),
		})
		if err != nil {
			return err
		}
		ctx.Export("output", pulumi.Map{
			"value": myRandomResource.Result,
		})
		return nil
	})
}
