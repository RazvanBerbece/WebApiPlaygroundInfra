# Azure AD Apps and Service Principals
output "adapp_webapi_client_id" {
  value = module.ad.adapp_webapi_sp_client_id
}

output "sp_webapi_app_client_name" {
  value = module.ad.sp_webapi_name
}

output "sp_webapi_app_client_id" {
  value = module.ad.sp_webapi_app_client_id
}

output "sp_webapi_app_tenant_id" {
  value = module.ad.sp_webapi_app_tenant_id
}

output "sp_webapi_password" {
  value     = module.ad.sp_webapi_password
  sensitive = true
}

# TF State Backend Storage
output "tfstate_store_account_name" {
  value = module.infraStateStore.globals_tfstate_storage_account_name
}

output "tfstate_store_account_primary_key" {
  value     = module.infraStateStore.globals_tfstate_storage_account_primary_key
  sensitive = true
}

output "tfstate_store_container_name" {
  value = module.infraStateStore.globals_tfstate_storage_container_name
}

# Container Registry
output "acr_login_server" {
  value     = module.acr.globals_acr_login_server
  sensitive = true
}

# Web API Playground 
output "webApi_resource_group_id" {
  value = module.webApiPlayground.webApi_resource_group_id
  sensitive = true
}

output "webApi_cae_default_domain" {
  value = module.webApiPlayground.webApi_cae_default_domain
}

output "webApi_cae_static_ip" {
  value = module.webApiPlayground.webApi_cae_static_ip
}