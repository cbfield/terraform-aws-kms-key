module "my_kms_key" {
  source = "../"

  alias       = "my-kms-key"
  description = "A kms key for that thing I have to encrypt"

  key_admins = [
    "arn:aws:iam::111122223333:user/my-admin-user",
  ]

  key_users = [
    "arn:aws:iam::111122223333:user/my-iam-user",
    "arn:aws:iam::111122223333:role/my-iam-role"
  ]
}
