data "azurerm_key_vault_secret" "client_secret" {
  for_each     = { for k, v in var.bot_connections : k => v if v.client_secret_key_vault_id != null && v.client_secret_key_vault_secret_name != null }
  name         = each.value.client_secret_key_vault_secret_name
  key_vault_id = each.value.client_secret_key_vault_id
}
resource "azurerm_bot_connection" "bot_connections" {
  for_each = var.bot_connections

  bot_name              = each.value.bot_name
  client_id             = each.value.client_id
  client_secret         = each.value.client_secret != null ? each.value.client_secret : try(data.azurerm_key_vault_secret.client_secret[each.key].value, null)
  location              = each.value.location
  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  service_provider_name = each.value.service_provider_name
  parameters            = each.value.parameters
  scopes                = each.value.scopes
}

