provider "azurerm" {
  features {}
  subscription_id = "e4129571-990d-4bea-92fa-7b0eaa0302f2"
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

