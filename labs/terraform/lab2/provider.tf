provider "azurerm" {
  features {}
  subscription_id = "7c0c6d96-73b8-4574-b8a6-36123c96e924"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }

  required_version = ">= 1.0"
}

