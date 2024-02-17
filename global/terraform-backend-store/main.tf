resource "azurerm_resource_group" "webapi-tfstate-resource-group" {
  name     = var.tfstate-rg-name
  location = var.tfstate-rg-location
}

resource "azurerm_storage_account" "webapi-tfstate-storage-account" {
  name                             = var.tfstate-storage-account-name
  resource_group_name              = azurerm_resource_group.webapi-tfstate-resource-group.name
  location                         = azurerm_resource_group.webapi-tfstate-resource-group.location
  account_tier                     = "Standard"
  account_replication_type         = "GRS"
  min_tls_version                  = "TLS1_2"
  account_kind                     = "BlobStorage"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "webapi-tfstate-storage-container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.webapi-tfstate-storage-account.name
  container_access_type = "private"
}