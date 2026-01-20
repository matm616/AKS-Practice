# Environment File

Place a .env file with environmental variables in `/.devcontainer/.env`

The dev container will then load the file and put them in your PATH

## Variables

- `ARM_SUBSCRIPTION_ID`:
[Azure Resource Manager provider requires the subscription to be set since version 4.0](https://registry.terraform.io/providers/hashicorp/azurerm/4.0.0/docs/guides/4.0-upgrade-guide#specifying-subscription-id-is-now-mandatory). This only impacts using Azure CLI for authentication. Since I am just using Azure CLI to log in as a user, `subscription_id` needs to be set but I don't want to put in IaC. As an alternative, Terraform is able to read the environment variable `ARM_SUBSCRIPTION_ID` so I will be using this functionality to pass in the subscription ID to terraform.