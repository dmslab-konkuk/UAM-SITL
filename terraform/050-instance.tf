resource "openstack_compute_instance_v2" "terraform-instance-01" {
  name      = "terraform-instance-01"
  region    = "RegionOne"
  flavor_id = "df2ca4c3-715a-4749-b955-1c73a9aca1a6"
  key_pair  = "dmslab"
  network {
    uuid = "2e26d161-5886-4e76-a9af-ad60d41761c5"
    name = "provider"
  }
  security_groups = ["default"]
  image_id = "${var.image-ubuntu}"
}
