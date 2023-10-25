variable "openstack_user_name" {
  description = "The username for the Tenant."
}

variable "openstack_tenant_name" {
  description = "The name of the Tenant."
}

# Set TF_VAR_PASSWORD in your shell
variable "PASSWORD" {}

variable "openstack_auth_url" {
  description = "The endpoint url to connect to OpenStack."
}

variable "openstack_external_network_name" {
  description = "Name of the external net"
}

variable "openstack_domain_name" {
    description = "value"
} 
variable "openstack_region" {
    description = "value"
} 

variable "openstack_keypair" {
    description = "The keypair to be used."
}

variable "instance_quantity" { 
  description = "Number of instances and IP to be created"
}

variable "openstack_instance_name" {
  description = "Name for OpenStack instances"
}

variable "openstack_image_name" {
  description = "Base image for OpenStack instances"
}

variable "openstack_availability_zone" {
  description = "Availability zone for OpenStack instances"
}

variable "openstack_flavor_name" {
  description = "Flavor name for OpenStack instances"
}

variable "openstack_security_group" {
  description = "Security group for OpenStack instances"
}

variable "openstack_network" {
  description = "Network for OpenStack instances"
}