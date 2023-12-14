output "key_arn" {
  description = "The KMS key ARN."
  value       = var.enabled ? resource.aws_kms_key.this["enabled"].arn : null
}
