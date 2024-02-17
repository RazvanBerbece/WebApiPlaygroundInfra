module "webApi" {
  source = "./webApiPlayground"

  webApiPlayground-resourceGroupName     = "rg-webApiPlayground"
  webApiPlayground-resourceGroupLocation = "West Europe"
}