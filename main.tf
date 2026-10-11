data "oci_core_drg_nat_policy_drg_nat_rules" "core_drg_nat_policy_drg_nat_rules_lookup" {
  for_each = var.core_drg_nat_policy_drg_nat_rules_lookup

  drg_nat_policy_id = each.value.drg_nat_policy_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

