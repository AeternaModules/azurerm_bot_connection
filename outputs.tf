output "bot_connections" {
  description = "All bot_connection resources"
  value       = azurerm_bot_connection.bot_connections
  sensitive   = true
}
output "bot_connections_bot_name" {
  description = "List of bot_name values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.bot_name]
}
output "bot_connections_client_id" {
  description = "List of client_id values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.client_id]
}
output "bot_connections_client_secret" {
  description = "List of client_secret values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.client_secret]
  sensitive   = true
}
output "bot_connections_location" {
  description = "List of location values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.location]
}
output "bot_connections_name" {
  description = "List of name values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.name]
}
output "bot_connections_parameters" {
  description = "List of parameters values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.parameters]
}
output "bot_connections_resource_group_name" {
  description = "List of resource_group_name values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.resource_group_name]
}
output "bot_connections_scopes" {
  description = "List of scopes values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.scopes]
}
output "bot_connections_service_provider_name" {
  description = "List of service_provider_name values across all bot_connections"
  value       = [for k, v in azurerm_bot_connection.bot_connections : v.service_provider_name]
}

