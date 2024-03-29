module github.com/dprzybyl/pulumi-dsa/tests

go 1.21

replace github.com/dprzybyl/pulumi-dsa/provider => ../provider

require (
	github.com/blang/semver v3.5.1+incompatible
	github.com/dprzybyl/pulumi-dsa/provider v0.0.0-20240204233916-7011740c948d
	github.com/pulumi/pulumi-go-provider v0.14.0
	github.com/pulumi/pulumi-go-provider/integration v0.10.0
	github.com/pulumi/pulumi/sdk/v3 v3.104.2
	github.com/stretchr/testify v1.8.4
)
