terraform {
  backend "azurerm" {
    resource_group_name  = "global-rg-tfstate"
    storage_account_name = "apitfstatestoreacct"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}