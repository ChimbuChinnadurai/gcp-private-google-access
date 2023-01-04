provider "google" {
  project = var.project_id
  region  = var.region
}

module "private_google_access" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "4.1.0"
  project_id = var.project_id
  type       = "private"
  name       = "googleapis-com"
  domain     = "googleapis.com."

  private_visibility_config_networks = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/${var.network_name}"
  ]

  recordsets = [
    {
      name = "private"
      type = "A"
      ttl  = 300
      records = [
        "199.36.153.8",
        "199.36.153.9",
        "199.36.153.10",
        "199.36.153.11"
      ]
    },
    {
      name = "*"
      type = "CNAME"
      ttl  = 300
      records = [
        "private.googleapis.com.",
      ]
    },
  ]
}


module "dns_google_private_gcr" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "4.1.0"
  project_id = var.project_id
  type       = "private"
  name       = "gcr-io"
  domain     = "gcr.io."

  private_visibility_config_networks = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/global/networks/${var.network_name}"
  ]

  recordsets = [
    {
      name = ""
      type = "A"
      ttl  = 300
      records = [
        "199.36.153.8",
        "199.36.153.9",
        "199.36.153.10",
        "199.36.153.11"
      ]
    },
    {
      name = "*"
      type = "CNAME"
      ttl  = 300
      records = [
        "gcr.io.",
      ]
    },
  ]
}
