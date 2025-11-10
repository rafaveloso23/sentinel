terraform {
  cloud {
    organization = ""
    workspaces {
      name    = "teste-wks-rvs-01"
      #project = "rf-sandbox-tfc"
      project = "new-rf-tfc"
    }
  }
}


provider "azurerm" {
  features {}
  
}

resource "azurerm_resource_group" "name" {
  name     = "example-rrresources"
  location = "East US"
}