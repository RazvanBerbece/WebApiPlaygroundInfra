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

output "webApi_resource_group_id" {
  value = module.webApiPlayground.webApi_resource_group_id
}

output "webApi_cae_default_domain" {
  value = module.webApiPlayground.webApi_cae_default_domain
}

output "webApi_cae_static_ip" {
  value = module.webApiPlayground.webApi_cae_static_ip
}