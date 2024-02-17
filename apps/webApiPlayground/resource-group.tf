resource "azurerm_resource_group" "webapi-resource-group" {
  name     = var.webApiPlayground-resourceGroupName
  location = var.webApiPlayground-resourceGroupLocation
}