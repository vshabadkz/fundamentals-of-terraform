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
/*
Create a new resource group and talk about it
in a multi-line comment
*/
resource "azurerm_resource_group" "rg" {
  name     = "tf-basics-rg"
  location = "westus2"
}