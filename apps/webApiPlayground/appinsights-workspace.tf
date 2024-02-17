resource "azurerm_log_analytics_workspace" "webapi-appinsights-workspace" {
  name                = "loganalytics-workspace-webapi"
  location            = var.webApiPlayground-resourceGroupLocation
  resource_group_name = var.webApiPlayground-resourceGroupName
  sku                 = "Free"
  retention_in_days   = 7
}