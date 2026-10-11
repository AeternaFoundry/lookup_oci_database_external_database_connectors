data "oci_database_external_database_connectors" "database_external_database_connectors_lookup" {
  for_each = var.database_external_database_connectors_lookup

  compartment_id       = each.value.compartment_id
  external_database_id = each.value.external_database_id
  display_name         = each.value.display_name
  state                = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

