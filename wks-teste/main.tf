terraform {
  cloud {
    organization = "fabiano-hc"
    workspaces {
      name = "wks-teste"
    }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "rg_teste" {
  name     = "rg-teste-001"
  location = "East US"
}
