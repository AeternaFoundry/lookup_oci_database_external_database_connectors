variable "database_external_database_connectors_lookup" {
  description = <<EOT
Map of database_external_database_connectors_lookup, attributes below
Required:
    - compartment_id
    - external_database_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id       = string
    external_database_id = string
    display_name         = optional(string)
    state                = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

