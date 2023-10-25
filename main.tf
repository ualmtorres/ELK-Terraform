# Create OpenStack instances based on a counter variable
resource "openstack_compute_instance_v2" "vm" {
  count             = var.instance_quantity
  name              = "${var.openstack_instance_name}-${count.index}"
  image_name        = var.openstack_image_name
  availability_zone = var.openstack_availability_zone
  flavor_name       = var.openstack_flavor_name
  key_pair          = var.openstack_keypair
  security_groups   = [var.openstack_security_group]
  network {
    name = var.openstack_network
  }
  user_data = file("install-elk.sh")
}

resource "openstack_networking_floatingip_v2" "ip" {
  count = var.instance_quantity
  pool  = var.openstack_external_network_name
}

resource "openstack_compute_floatingip_associate_v2" "vm_ip" {
  count       = var.instance_quantity
  floating_ip = openstack_networking_floatingip_v2.ip[count.index].address
  instance_id = openstack_compute_instance_v2.vm[count.index].id
}

output "tf_vm_Floating_IP" {
  value      = openstack_networking_floatingip_v2.ip[*].address
  depends_on = [openstack_networking_floatingip_v2.ip]
}

