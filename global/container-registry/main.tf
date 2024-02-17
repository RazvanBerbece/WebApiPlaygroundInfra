resource "azurerm_resource_group" "container-registry-resource-group" {
  name     = var.acr-rg-name
  location = var.acr-rg-location
}

resource "azurerm_container_registry" "acr" {
  name                          = "acrwebapiplayground"
  resource_group_name           = azurerm_resource_group.container-registry-resource-group.name
  location                      = azurerm_resource_group.container-registry-resource-group.location
  sku                           = "Basic"
  admin_enabled                 = false
}