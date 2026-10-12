output "addons_id" {
  description = "Map of id values across all addons, keyed the same as var.addons except keys with no id are omitted"
  value       = { for k, v in pagerduty_addon.addons : k => v.id if v.id != null && length(v.id) > 0 }
}
output "addons_name" {
  description = "Map of name values across all addons, keyed the same as var.addons except keys with no name are omitted"
  value       = { for k, v in pagerduty_addon.addons : k => v.name if v.name != null && length(v.name) > 0 }
}
output "addons_src" {
  description = "Map of src values across all addons, keyed the same as var.addons except keys with no src are omitted"
  value       = { for k, v in pagerduty_addon.addons : k => v.src if v.src != null && length(v.src) > 0 }
}

