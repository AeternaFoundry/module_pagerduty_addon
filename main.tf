resource "pagerduty_addon" "addons" {
  for_each = var.addons

  name = each.value.name
  src  = each.value.src
}

