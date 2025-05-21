terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstate123456"
    container_name       = "tfstate"
    key                  = "adfdr.terraform.tfstate"
  }
}
