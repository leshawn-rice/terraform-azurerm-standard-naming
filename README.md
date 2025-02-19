# Intro

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.5 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | The primary application or service identifier. | `string` | `""` | no |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | The business unit or domain. | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment identifier (e.g. dev, prod). | `string` | `""` | no |
| <a name="input_instance_number"></a> [instance\_number](#input\_instance\_number) | The instance number (optional). | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure region or location. | `string` | `""` | no |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | The resource type (mandatory). | `string` | n/a | yes |
| <a name="input_workload"></a> [workload](#input\_workload) | The workload or specific role (optional). | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_is_name_valid"></a> [is\_name\_valid](#output\_is\_name\_valid) | Boolean indicating whether the name is valid. Will throw an error if the name is not valid. |
| <a name="output_name"></a> [name](#output\_name) | The final generated resource name. |
<!-- END_TF_DOCS -->