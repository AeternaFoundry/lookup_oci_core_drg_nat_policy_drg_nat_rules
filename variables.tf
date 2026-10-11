variable "core_drg_nat_policy_drg_nat_rules_lookup" {
  description = <<EOT
Map of core_drg_nat_policy_drg_nat_rules_lookup, attributes below
Required:
    - drg_nat_policy_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    drg_nat_policy_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

