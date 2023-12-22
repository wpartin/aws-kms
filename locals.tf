locals {
  enabled = var.enabled ? toset(["enabled"]) : toset([])
}