output "bot_connections_id" {
  description = "Map of id values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.id }
}
output "bot_connections_bot_name" {
  description = "Map of bot_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.bot_name }
}
output "bot_connections_client_id" {
  description = "Map of client_id values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.client_id }
}
output "bot_connections_client_secret" {
  description = "Map of client_secret values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.client_secret }
  sensitive   = true
}
output "bot_connections_location" {
  description = "Map of location values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.location }
}
output "bot_connections_name" {
  description = "Map of name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.name }
}
output "bot_connections_parameters" {
  description = "Map of parameters values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.parameters }
}
output "bot_connections_resource_group_name" {
  description = "Map of resource_group_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.resource_group_name }
}
output "bot_connections_scopes" {
  description = "Map of scopes values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.scopes }
}
output "bot_connections_service_provider_name" {
  description = "Map of service_provider_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.service_provider_name }
}

