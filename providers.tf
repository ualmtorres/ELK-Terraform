terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.51.1"
    }
  }
}

provider "openstack" {
  domain_name = var.openstack_domain_name
  user_name   = var.openstack_user_name
  tenant_name = var.openstack_tenant_name
  password    = var.PASSWORD
  auth_url    = var.openstack_auth_url
  region      = var.openstack_region
}