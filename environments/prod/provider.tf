terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    use_azuread_auth     = true
    resource_group_name  = "git_rg"
    storage_account_name = "git12345"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}
