output "webApi_resource_group_id" {
  value = azurerm_resource_group.webapi-resource-group.id
}

output "webApi_cae_default_domain" {
  value = azurerm_container_app_environment.webapi-cae.default_domain
}

output "webApi_cae_static_ip" {
  value = azurerm_container_app_environment.webapi-cae.static_ip_address
}