variable "addons" {
  description = <<EOT
Map of addons, attributes below
Required:
    - name
    - src
EOT

  type = map(object({
    name = string
    src  = string
  }))
}

