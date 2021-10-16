variable "alias" {
  description = "An alias to assign to the key"
  type        = string
}

variable "alias_use_prefix" {
  description = "If true, the provided alias will be used as a prefix, with random characters appended in the actual alias"
  type        = bool
  default     = false
}

variable "customer_master_key_spec" {
  description = <<-EOF
  A spec to use for the key (https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html)
  Accepted values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096,
  ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, ECC_SECG_P256K1
  EOF
  type        = string
  default     = "SYMMETRIC_DEFAULT"
}

variable "deletion_window_in_days" {
  description = "The duration of the period in which the key will be scheduled for deletion before actually being deleted"
  type        = number
  default     = 30
}

variable "description" {
  description = "A description assigned to the key"
  type        = string
  default     = null
}

variable "enable_key_rotation" {
  description = "Whether or not to enable automatic key rotation"
  type        = bool
  default     = false
}

variable "iam_enabled" {
  description = "Whether or not to allow key users to be defined by IAM privileges, rather than just the key policy"
  type        = bool
  default     = true
}

variable "is_enabled" {
  description = "Whether or not the key is enabled for use"
  type        = bool
  default     = true
}

variable "key_admins" {
  description = "ARNs of principals to assign as administrators of the key"
  type        = list(string)
  default     = []
}

variable "key_usage" {
  description = "How the key will be used (ENCRYPT_DECRYPT or SIGN_VERIFY)"
  type        = string
  default     = "ENCRYPT_DECRYPT"
}

variable "key_users" {
  description = "ARNs of principals to assign as users of the key"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to assign to the key"
  type        = map(string)
  default     = {}
}
