output "bot_connections_id" {
  description = "Map of id values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_connections_bot_name" {
  description = "Map of bot_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.bot_name if v.bot_name != null && length(v.bot_name) > 0 }
}
output "bot_connections_client_id" {
  description = "Map of client_id values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "bot_connections_client_secret" {
  description = "Map of client_secret values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "bot_connections_location" {
  description = "Map of location values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_connections_name" {
  description = "Map of name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bot_connections_parameters" {
  description = "Map of parameters values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "bot_connections_resource_group_name" {
  description = "Map of resource_group_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "bot_connections_scopes" {
  description = "Map of scopes values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "bot_connections_service_provider_name" {
  description = "Map of service_provider_name values across all bot_connections, keyed the same as var.bot_connections"
  value       = { for k, v in azurerm_bot_connection.bot_connections : k => v.service_provider_name if v.service_provider_name != null && length(v.service_provider_name) > 0 }
}

