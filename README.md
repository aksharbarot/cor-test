# aws-image-builder

Terraform creates and manages an Amazon Machine Image (AMI) with EC2 Image Builder service.


## Deploy

terraform init
terraform apply

## Author

Akshar Barot

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |


## Resources

| Name | Type |
|------|------|
| [aws_imagebuilder_component.cw_agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_component) | resource |
| [aws_imagebuilder_distribution_configuration.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_distribution_configuration) | resource |
| [aws_imagebuilder_image.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_image) | resource |
| [aws_imagebuilder_image_pipeline.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_image_pipeline) | resource |
| [aws_imagebuilder_image_recipe.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_image_recipe) | resource |
| [aws_imagebuilder_infrastructure_configuration.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/imagebuilder_infrastructure_configuration) | resource |
| [aws_s3_object.ibuilder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_iam_policy.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_instance_profile.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource
| [aws_iam_policy_document.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_kms_key.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_iam_policy_document.image_builder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_name_tag"></a> [ami\_name\_tag](#input\_ami\_name\_tag) | Mentioned in to common.auto.tfvars file | `string` | n/a | yes |
| <a name="input_aws_cli_profile"></a> [aws\_cli\_profile](#input\_aws\_cli\_profile) | The AWS CLI profile name. | `string` | n/a | yes |
| <a name="input_aws_key_pair_name"></a> [aws\_key\_pair\_name](#input\_aws\_key\_pair\_name) | Mentioned in to common.auto.tfvars file | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region. | `string` | n/a | yes |
| <a name="input_aws_s3_bucket"></a> [aws\_s3\_bucket](#input\_aws\_s3\_bucket) | The S3 bucket name that stores the Image Builder componeent files. | `string` | n/a | yes |
| <a name="input_aws_s3_log_bucket"></a> [aws\_s3\_log\_bucket](#input\_aws\_s3\_log\_bucket) | The S3 bucket name to send logs to. | `string` | n/a | yes |
| <a name="input_ebs_root_vol_size"></a> [ebs\_root\_vol\_size](#input\_ebs\_root\_vol\_size) | Mentioned in to common.auto.tfvars file  | `number` | n/a | yes |
| <a name="input_ec2_iam_role_name"></a> [ec2\_iam\_role\_name](#input\_ec2\_iam\_role\_name) | The EC2's IAM role name. | `string` | n/a | yes |
| <a name="input_image_receipe_version"></a> [image\_receipe\_version](#input\_image\_receipe\_version) | Provide new Version or update version number | `string` | n/a | yes |
| <a name="security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | Provide Security group ID which has 443 open for SSM connection | `string` | n/a | yes |
| <a name="subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Provide Subnet ID | `string` | n/a | yes |

## files (folder)
Contains cloudwatch agent installation file (This is the location where all files will be push to S3)

## Outputs

No outputs.
