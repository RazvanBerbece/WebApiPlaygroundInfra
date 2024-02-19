data "azurerm_subscription" "primary" {}

data "azuread_client_config" "current" {}

# AD App for the WebApiPlayground application
resource "azuread_application" "webapi-azuread-app" {
  display_name = "adapp-webapi-playground"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "webapi-sp" {
  client_id                    = azuread_application.webapi-azuread-app.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}

resource "azurerm_role_assignment" "webapi-sp-role-assignment-acr" {
  scope                = "/subscriptions/${var.subscription_id}/resourceGroups/global-rg-acr/providers/Microsoft.ContainerRegistry/registries/acrwebapiplayground"
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.webapi-sp.id
}

resource "azurerm_role_assignment" "webapi-sp-role-assignment-app" {
  scope              = "/subscriptions/${var.subscription_id}"
  role_definition_id = azurerm_role_definition.webapi-app-sp-app-admin-role.role_definition_resource_id
  principal_id       = azuread_service_principal.webapi-sp.id
}

resource "azuread_service_principal_password" "webapi-sp-password" {
  service_principal_id = azuread_service_principal.webapi-sp.object_id
}