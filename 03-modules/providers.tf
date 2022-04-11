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
