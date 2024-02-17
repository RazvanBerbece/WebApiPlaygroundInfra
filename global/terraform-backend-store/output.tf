output "globals_tfstate_resource_group_id" {
  value = azurerm_resource_group.webapi-tfstate-resource-group.id
}

output "globals_tfstate_resource_group_name" {
  value = azurerm_resource_group.webapi-tfstate-resource-group.name
}

output "globals_tfstate_storage_account_name" {
  value = azurerm_storage_account.webapi-tfstate-storage-account.name
}

output "globals_tfstate_storage_account_primary_key" {
  value     = azurerm_storage_account.webapi-tfstate-storage-account.primary_access_key
  sensitive = true
}

output "globals_tfstate_storage_container_name" {
  value = azurerm_storage_container.webapi-tfstate-storage-container.name
}