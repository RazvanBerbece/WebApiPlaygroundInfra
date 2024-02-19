# AD and Service Principals
module "ad" {
  source = "./global/service-principals"

  subscription_id = var.subscription_id
}

# Admin and Globals
module "infraStateStore" {
  source = "./global/terraform-backend-store"
}

module "acr" {
  source = "./global/container-registry"
}

# Applications
module "webApiPlayground" {
  source = "./apps/webApiPlayground"
}