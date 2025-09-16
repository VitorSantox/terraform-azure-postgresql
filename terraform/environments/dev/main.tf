provider "azurerm" {
  features {}
}

module "rg" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "postgresql" {
  source                 = "../../modules/postgresql"
  resource_group_name    = module.rg.name
  location               = module.rg.location
  name                   = var.name
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  allow_azure_services   = var.allow_azure_services
}

