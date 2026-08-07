terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
     backend "azurerm" {
    resource_group_name  = "mishra_rg"
    storage_account_name = "mishrastorage"
    container_name       = "tfstate"
    key                  = "axion.tfstate"
    }
}

provider "azurerm" {
  features {}
}
