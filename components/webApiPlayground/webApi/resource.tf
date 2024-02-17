resource "azurerm_resource_group" "WebApiPlaygroundResourceGroup" {
  name     = var.WebApiPlaygroundResourceGroupName
  location = var.WebApiPlaygroundLocation
}