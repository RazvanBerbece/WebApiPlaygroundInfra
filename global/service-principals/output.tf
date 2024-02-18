output "adapp_webapi_sp_client_id" {
  value = azuread_application.webapi-azuread-app.client_id
}

output "sp_webapi_name" {
  value = azuread_service_principal.webapi-sp.display_name
}

output "sp_webapi_app_client_id" {
  value = azuread_service_principal.webapi-sp.client_id
}

output "sp_webapi_app_tenant_id" {
  value = azuread_service_principal.webapi-sp.application_tenant_id
}

output "sp_webapi_password" {
  value     = azuread_service_principal_password.webapi-sp-password
  sensitive = true
}
