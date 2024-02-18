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