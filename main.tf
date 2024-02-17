# Admin and Globals
module "infraStateStore" {
  source = "./global/tf-backend"
}

module "acr" {
  source = "./global/container-registry"
}

# Applications
module "webApiPlayground" {
  source = "./apps/webApiPlayground"
}