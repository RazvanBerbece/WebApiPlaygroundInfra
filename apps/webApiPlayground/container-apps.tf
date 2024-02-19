resource "azurerm_container_app" "webapi-capp" {
  name                         = "capp-webapi-playground"
  container_app_environment_id = azurerm_container_app_environment.webapi-cae.id
  resource_group_name          = azurerm_resource_group.webapi-resource-group.name
  revision_mode                = "Single"

  # By default, allow all public access and send 100% of traffic to the instance
#   ingress {
#     target_port      = 8080
#     external_enabled = true

#     traffic_weight {
#       percentage = 100
#     }
#   }

  template {
    min_replicas = 1
    max_replicas = 1

    container {
      name   = "webapiplayground"
      image  = "acrwebapiplayground.azurecr.io/webapi:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }
}