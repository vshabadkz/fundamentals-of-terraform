# Configure the provider
provider "azurerm" {
  #specify a version
  //version = "=1.20.0"
  //version = "~> 1.0"
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
# Create virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
