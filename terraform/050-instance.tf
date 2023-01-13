resource "openstack_compute_instance_v2" "terraform-instance-01" {
  name      = "terraform-instance-01"
  region    = "RegionOne"
  flavor_id = "d5298430-7b9a-417e-b52d-8d17acc833ad"
  key_pair  = "dmslab"
  network {
    uuid = "2e26d161-5886-4e76-a9af-ad60d41761c5"
    name = "provider"
  }
  security_groups = ["default"]
  image_id = "${var.image-px4}"

  connection {
     type        = "ssh"
     user        = "root"
     host        = "${self.access_ip_v4}"
     private_key = "${file("/home/ubuntu/pem/dmslab.pem")}"
     password    = "!kadacloud204"
    }

  provisioner "file" {
    source      = "bin/initPX4.sh"
    destination = "/tmp/initPX4.sh"
  }
  provisioner "file" {
    source      = "bin/initMavlink.sh"
    destination = "/tmp/initMavlink.sh"
   }
  provisioner "remote-exec" {
    inline =[
      "chmod +x /tmp/initPX4.sh",
      "export PX4_SIM_PORT=4560",
      "export MAV_ID=1",
      "export PX4_SIM_HOST_ADDR=117.16.136.191",
      "/tmp/initPX4.sh"
    ]
  }
  provisioner "remote-exec" {
    inline =[
      "chmod +x /tmp/initMavlink.sh",
      "export MAV_PORT=14550",
      "export MAV_IP=117.16.136.207",
      "/tmp/initMavlink.sh"
    ]
  }
  
  
}
resource "openstack_compute_instance_v2" "terraform-instance-02" {
  name      = "terraform-instance-02"
  region    = "RegionOne"
  flavor_id = "d5298430-7b9a-417e-b52d-8d17acc833ad"
  key_pair  = "dmslab"
  network {
    uuid = "2e26d161-5886-4e76-a9af-ad60d41761c5"
    name = "provider"
  }
  security_groups = ["default"]
  image_id = "${var.image-px4}"

  connection {
     type        = "ssh"
     user        = "root"
     host        = "${self.access_ip_v4}"
     private_key = "${file("/home/ubuntu/pem/dmslab.pem")}"
     password    = "!kadacloud204"
    }

  provisioner "file" {
    source      = "bin/initPX4.sh"
    destination = "/tmp/initPX4.sh"
  }
  provisioner "file" {
    source      = "bin/initMavlink.sh"
    destination = "/tmp/initMavlink.sh"
   }
  provisioner "remote-exec" {
    inline =[
      "chmod +x /tmp/initPX4.sh",
      "export PX4_SIM_PORT=4561",
      "export MAV_ID=2",
      "export PX4_SIM_HOST_ADDR=117.16.136.191",
      "/tmp/initPX4.sh"
    ]
  }
  provisioner "remote-exec" {
    inline =[
      "chmod +x /tmp/initMavlink.sh",
      "export MAV_PORT=14551",
      "export MAV_IP=117.16.136.207",
      "/tmp/initMavlink.sh"
    ]
  }
  
  
}
