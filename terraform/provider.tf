# Define required providers
terraform {
required_version = ">= 1.0.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.42.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "${var.userName}"
  tenant_name   = "${var.tenantName}"
  password    = "${var.pw}"
  auth_url    = "http://117.16.137.241:5000/v3/"
  region      = "RegionOne"
  user_domain_name = "Default"
  endpoint_type = "public"
  endpoint_overrides = {
    "identity" = "http://117.16.137.241:5000/v3/"
    "network"  = "http://117.16.137.241:9696/"
    "compute"  = "http://117.16.137.241:8774/v2.1/"
    "image"    = "http://117.16.137.241:9292/"
    "placement" = "http://117.16.137.241:8778/"
  }
}
