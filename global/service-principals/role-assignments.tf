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