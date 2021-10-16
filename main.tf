resource "aws_kms_key" "key" {
  customer_master_key_spec = var.customer_master_key_spec
  deletion_window_in_days  = var.deletion_window_in_days
  description              = var.description
  enable_key_rotation      = var.enable_key_rotation
  is_enabled               = var.is_enabled
  key_usage                = var.key_usage

  policy = templatefile("${path.module}/templates/key-policy.json.tpl", {
    account_id         = data.aws_caller_identity.current.account_id
    iam_enabled        = var.iam_enabled
    key_admins         = length(var.key_admins) == 1 ? jsonencode(var.key_admins.0) : jsonencode(var.key_admins)
    key_admins_enabled = length(var.key_admins) > 0
    key_users          = length(var.key_users) == 1 ? jsonencode(var.key_users.0) : jsonencode(var.key_users)
    key_users_enabled  = length(var.key_users) > 0
  })

  tags = merge(var.tags, {
    "Managed By Terraform" = "true"
  })
}

resource "aws_kms_alias" "alias" {
  name          = var.alias_use_prefix ? null : "alias/${var.alias}"
  name_prefix   = var.alias_use_prefix ? "alias/${var.alias}" : null
  target_key_id = aws_kms_key.key.arn
}
