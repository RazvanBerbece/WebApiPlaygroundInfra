resource "azurerm_log_analytics_workspace" "webapi-appinsights-workspace" {
  name                = "loganalytics-workspace-webapi"
  location            = azurerm_resource_group.webapi-resource-group.location
  resource_group_name = azurerm_resource_group.webapi-resource-group.name
  sku                 = "Free"
  retention_in_days   = 7
}