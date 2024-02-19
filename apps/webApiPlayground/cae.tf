resource "azurerm_container_app_environment" "webapi-cae" {
  name                       = "cae-api"
  location                   = azurerm_resource_group.webapi-resource-group.location
  resource_group_name        = azurerm_resource_group.webapi-resource-group.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.webapi-appinsights-workspace.id
}