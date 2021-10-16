resource "aws_kms_key" "key" {
  customer_master_key_spec = var.customer_master_key_spec
  description              = var.description
  key_usage                = var.key_usage

  policy = templatefile("${path.module}/templates/key-policy.json.tpl", {
    account_id         = data.aws_caller_identity.current.account_id
    iam_enabled        = var.iam_enabled
    key_admins         = length(var.key_admins) == 1 ? jsonencode(var.key_admins.0) : jsonencode(var.key_admins)
    key_admins_enabled = length(var.key_admins) > 0
    key_users          = length(var.key_users) == 1 ? jsonencode(var.key_users.0) : jsonencode(var.key_users)
    key_users_enabled  = length(var.key_users) > 0
  })
}
