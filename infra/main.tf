terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "appservice" {
  source              = "../modules/appservice"
  resource_group_name = var.RESOURCE_GROUP_NAME
  location            = var.LOCATION
  web_app_name        = var.WEB_APP_NAME
}

module "keyvault" {
  source              = "../modules/keyvault"
  resource_group_name = var.RESOURCE_GROUP_NAME
  location            = var.LOCATION
  keyvault_name       = var.KEYVAULT_NAME
}
