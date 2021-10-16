# terraform-aws-kms-key
An AWS customer-managed Key Management Service (KMS) key

# Terraform Docs

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | An alias to assign to the key | `string` | n/a | yes |
| <a name="input_alias_use_prefix"></a> [alias\_use\_prefix](#input\_alias\_use\_prefix) | If true, the provided alias will be used as a prefix, with random characters appended in the actual alias | `bool` | `false` | no |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | A spec to use for the key (https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html)<br>Accepted values: SYMMETRIC\_DEFAULT, RSA\_2048, RSA\_3072, RSA\_4096,<br>ECC\_NIST\_P256, ECC\_NIST\_P384, ECC\_NIST\_P521, ECC\_SECG\_P256K1 | `string` | `"SYMMETRIC_DEFAULT"` | no |
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | The duration of the period in which the key will be scheduled for deletion before actually being deleted | `number` | `30` | no |
| <a name="input_description"></a> [description](#input\_description) | A description assigned to the key | `string` | `null` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Whether or not to enable automatic key rotation | `bool` | `false` | no |
| <a name="input_iam_enabled"></a> [iam\_enabled](#input\_iam\_enabled) | Whether or not to allow key users to be defined by IAM privileges, rather than just the key policy | `bool` | `true` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Whether or not the key is enabled for use | `bool` | `true` | no |
| <a name="input_key_admins"></a> [key\_admins](#input\_key\_admins) | ARNs of principals to assign as administrators of the key | `list(string)` | `[]` | no |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | How the key will be used (ENCRYPT\_DECRYPT or SIGN\_VERIFY) | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_key_users"></a> [key\_users](#input\_key\_users) | ARNs of principals to assign as users of the key | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the key | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alias"></a> [alias](#output\_alias) | The alias of the kms key |
| <a name="output_alias_use_prefix"></a> [alias\_use\_prefix](#output\_alias\_use\_prefix) | The provided value for var.alias\_use\_prefix |
| <a name="output_customer_master_key_spec"></a> [customer\_master\_key\_spec](#output\_customer\_master\_key\_spec) | The provided value for var.customer\_master\_key\_spec |
| <a name="output_deletion_window_in_days"></a> [deletion\_window\_in\_days](#output\_deletion\_window\_in\_days) | The provided value for var.deletion\_window\_in\_days |
| <a name="output_description"></a> [description](#output\_description) | The provided value for var.description |
| <a name="output_enable_key_rotation"></a> [enable\_key\_rotation](#output\_enable\_key\_rotation) | The provided value for var.enable\_key\_rotation |
| <a name="output_iam_enabled"></a> [iam\_enabled](#output\_iam\_enabled) | The provided value for var.iam\_enabled |
| <a name="output_is_enabled"></a> [is\_enabled](#output\_is\_enabled) | The provided value for var.is\_enabled |
| <a name="output_key_admins"></a> [key\_admins](#output\_key\_admins) | The provided value for var.key\_admins |
| <a name="output_key_usage"></a> [key\_usage](#output\_key\_usage) | The provided value for var.key\_usage |
| <a name="output_key_users"></a> [key\_users](#output\_key\_users) | The provided value for var.key\_users |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags assigned to the key |
