data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "this" {
  name                = "key_valut"
  location            = "eastus"
  resource_group_name = "rg-rmnk"
  tenant_id           = "7a0d81a6-8d2f-4ed3-b0b2-9477728af43c"

  sku_name = "standard"

  purge_protection_enabled   = false
  soft_delete_retention_days = 7

  enable_rbac_authorization = true
}