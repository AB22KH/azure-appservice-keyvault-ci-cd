resource "azurerm_app_service_plan" "plan" {
  name                = "asp-${var.WEB_APP_NAME}"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  kind                = "Windows"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = var.WEB_APP_NAME
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    always_on = true
  }
}
