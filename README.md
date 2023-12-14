<!-- BEGIN_TF_DOCS -->
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
| [aws_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deletion_window_in_days"></a> [deletion\_window\_in\_days](#input\_deletion\_window\_in\_days) | The waiting period before AWS KMS will delete the key. | `number` | `30` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the KMS key. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable or disable the module. | `bool` | n/a | yes |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Intended key purpose. | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | A JSON policy to use for the KMS key. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to apply to the KMS resource(s). | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | The KMS key ARN. |
<!-- END_TF_DOCS -->