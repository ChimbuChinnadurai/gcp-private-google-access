# gcp-private-google-access

Terraform module to configure private google access DNS zones

Ensure Private Google Access is enabled on the subnet level

This modules creates DNS zone for the domain `private.googleapis.com.` which does not support VPC service control. If you are using VPC service controls then please use `restricted.googleapis.com`. Refer to https://cloud.google.com/vpc/docs/configure-private-google-access#config
