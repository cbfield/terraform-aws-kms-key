output "alias" {
  description = "The alias of the kms key"
  value       = aws_kms_alias.alias
}

output "alias_use_prefix" {
  description = "The provided value for var.alias_use_prefix"
  value       = var.alias_use_prefix
}

output "customer_master_key_spec" {
  description = "The provided value for var.customer_master_key_spec"
  value       = var.customer_master_key_spec
}

output "description" {
  description = "The provided value for var.description"
  value       = var.description
}

output "iam_enabled" {
  description = "The provided value for var.iam_enabled"
  value       = var.iam_enabled
}

output "key_admins" {
  description = "The provided value for var.key_admins"
  value       = var.key_admins
}

output "key_usage" {
  description = "The provided value for var.key_usage"
  value       = var.key_usage
}

output "key_users" {
  description = "The provided value for var.key_users"
  value       = var.key_users
}
