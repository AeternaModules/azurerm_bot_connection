variable "bot_connections" {
  description = <<EOT
Map of bot_connections, attributes below
Required:
    - bot_name
    - client_id
    - client_secret
    - client_secret_key_vault_id (optional, alternative to client_secret)
    - client_secret_key_vault_secret_name (optional, alternative to client_secret)
    - location
    - name
    - resource_group_name
    - service_provider_name
Optional:
    - parameters
    - scopes
EOT

  type = map(object({
    bot_name                            = string
    client_id                           = string
    client_secret                       = string
    client_secret_key_vault_id          = optional(string)
    client_secret_key_vault_secret_name = optional(string)
    location                            = string
    name                                = string
    resource_group_name                 = string
    service_provider_name               = string
    parameters                          = optional(map(string))
    scopes                              = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_bot_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: bot_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: service_provider_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: scopes
  #   condition: length(value) > 0
  #   message:   must not be empty
}

