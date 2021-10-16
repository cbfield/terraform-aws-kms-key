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

output "deletion_window_in_days" {
  description = "The provided value for var.deletion_window_in_days"
  value       = var.deletion_window_in_days
}

output "description" {
  description = "The provided value for var.description"
  value       = var.description
}

output "enable_key_rotation" {
  description = "The provided value for var.enable_key_rotation"
  value       = var.enable_key_rotation
}

output "iam_enabled" {
  description = "The provided value for var.iam_enabled"
  value       = var.iam_enabled
}

output "is_enabled" {
  description = "The provided value for var.is_enabled"
  value       = var.is_enabled
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

output "tags" {
  description = "Tags assigned to the key"
  value = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}
