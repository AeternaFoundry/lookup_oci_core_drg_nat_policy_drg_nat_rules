output "core_drg_nat_policy_drg_nat_rules_lookup_id" {
  description = "Map of id values across all core_drg_nat_policy_drg_nat_rules_lookup, keyed the same as var.core_drg_nat_policy_drg_nat_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policy_drg_nat_rules.core_drg_nat_policy_drg_nat_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_nat_policy_drg_nat_rules_lookup_drg_nat_policy_id" {
  description = "Map of drg_nat_policy_id values across all core_drg_nat_policy_drg_nat_rules_lookup, keyed the same as var.core_drg_nat_policy_drg_nat_rules_lookup except keys with no drg_nat_policy_id are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policy_drg_nat_rules.core_drg_nat_policy_drg_nat_rules_lookup : k => v.drg_nat_policy_id if v.drg_nat_policy_id != null && length(v.drg_nat_policy_id) > 0 }
}
output "core_drg_nat_policy_drg_nat_rules_lookup_drg_nat_rules" {
  description = "Map of drg_nat_rules values across all core_drg_nat_policy_drg_nat_rules_lookup, keyed the same as var.core_drg_nat_policy_drg_nat_rules_lookup except keys with no drg_nat_rules are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policy_drg_nat_rules.core_drg_nat_policy_drg_nat_rules_lookup : k => v.drg_nat_rules if v.drg_nat_rules != null && length(v.drg_nat_rules) > 0 }
}
output "core_drg_nat_policy_drg_nat_rules_lookup_filter" {
  description = "Map of filter values across all core_drg_nat_policy_drg_nat_rules_lookup, keyed the same as var.core_drg_nat_policy_drg_nat_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_drg_nat_policy_drg_nat_rules.core_drg_nat_policy_drg_nat_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

