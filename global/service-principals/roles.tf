resource "azurerm_role_definition" "webapi-app-sp-app-admin-role" {
  name  = "webapi-sp-app-admin-role"
  scope = "/subscriptions/${var.subscription_id}"

  permissions {
    actions = [
      "Microsoft.App/containerApps/revisions/read",
      "Microsoft.App/containerApps/revisions/activate/action",
      "Microsoft.App/containerApps/revisions/deactivate/action",
      "Microsoft.App/containerApps/revisions/restart/action",
      "Microsoft.App/locations/containerappoperationresults/read",
      "Microsoft.App/containerApps/write",
      "Microsoft.App/containerApps/read"
    ]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}