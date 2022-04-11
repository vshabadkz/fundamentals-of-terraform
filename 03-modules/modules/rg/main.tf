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
resource "azurerm_resource_group" "rg" {
  count = (contains(local.valid_envs, var.environment) == true) ? 1 : 0

  name     = "${var.name}-rg"
  location = var.location
  tags = merge(
    {
      Environment = var.environment,
      CustomerID  = var.customerID
    },
    var.tags
  )
}
