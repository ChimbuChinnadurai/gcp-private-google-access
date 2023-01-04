# gcp-private-google-access

Terraform module to configure private google access DNS zones

Ensure Private Google Access is enabled on the subnet level

This modules creates DNS zone for the domain `private.googleapis.com.` which does not support VPC service control. If you are using VPC service controls then please use `restricted.googleapis.com`. Refer to https://cloud.google.com/vpc/docs/configure-private-google-access#config

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.47.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_google_private_gcr"></a> [dns\_google\_private\_gcr](#module\_dns\_google\_private\_gcr) | terraform-google-modules/cloud-dns/google | 4.1.0 |
| <a name="module_private_google_access"></a> [private\_google\_access](#module\_private\_google\_access) | terraform-google-modules/cloud-dns/google | 4.1.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | vpc network name | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP project id | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP region name | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
