terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.57.0" # Pinning to a specific version for stability
    }
  }
}

provider "azurerm" {
  features {}
}