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
  image_id = "${var.image-px4}"
  provisioner "local-exec" {
    command     = "bin/initPX4.sh"
    interpreter = ["/bin/bash"]
    working_dir = path.module

    environment = {
      PX4_SIM_PORT=4560
      PX4_SIM_HOST_ADDR="117.16.136.191"
    }
  }
  provisioner "local-exec" {
    command     = "bin/initMavlink.sh"
    interpreter = ["/bin/bash"]
    working_dir = path.module

    environment = {
      MAV_PORT = 14550
      MAV_IP ="117.16.136.191"
    }
  }
  
}
