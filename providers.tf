
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstategroup"
    storage_account_name = "tfstatepython"
    container_name       = "pythontfstatefile"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}