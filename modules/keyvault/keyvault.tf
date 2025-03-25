resource "azurerm_key_vault" "kv" {
  name                = var.KEYVAULT_NAME
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  tenant_id           = "YOUR_TENANT_ID"
  sku_name            = "standard"
}

resource "azurerm_key_vault_secret" "example" {
  name         = "example-secret"
  value        = "MySuperSecretValue"
  key_vault_id = azurerm_key_vault.kv.id
}
