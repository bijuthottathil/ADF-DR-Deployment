provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_primary" {
  name     = "rg-adf-central"
  location = "Central US"
}

resource "azurerm_resource_group" "rg_dr" {
  name     = "rg-adf-east"
  location = "East US"
}

resource "azurerm_data_factory" "adf_primary" {
  name                = "adf-central-instance"
  location            = azurerm_resource_group.rg_primary.location
  resource_group_name = azurerm_resource_group.rg_primary.name
}

resource "azurerm_data_factory" "adf_dr" {
  name                = "adf-east-instance"
  location            = azurerm_resource_group.rg_dr.location
  resource_group_name = azurerm_resource_group.rg_dr.name
}
