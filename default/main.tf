// Criando o volume de 50GB 
resource "openstack_blockstorage_volume_v2" "volume_1" {
  region = "${var.region}"
  size = 50
  image_id = "${var.ubuntu16_image_id}"
}


//Criando um security group chamado my_secgroup
resource "openstack_compute_secgroup_v2" "secgroup_1" {
  name = "my_secgroup"
  description = "my security group"
  rule {
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr = "0.0.0.0/0"
  }
  rule {
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
    cidr = "0.0.0.0/0"
  }
}

// Criando uma instância chamada terraform
resource "openstack_compute_instance_v2" "terraform" {
  name            = "${var.instance_name}"
  image_name      = "${var.image}"
  flavor_name     = "${var.flavor}"
  key_pair        = "${var.key_pair}"
  security_groups = ["${var.security_group}"]
  floating_ip     = "${var.floating_ip}"

  block_device {
    uuid = "${openstack_blockstorage_volume_v2.volume_1.id}"
    source_type = "volume"
    boot_index = 0
    destination_type = "volume"
    delete_on_termination = true
  }

// Fixando uma network já existente na instância
  network {
    uuid = "${var.network_uuid}"
  }

// Fixando uma chave já existente na instância
  provisioner "remote-exec" {
    connection {
      user     = "${var.ssh_user_name}"
      private_key = "${file(var.ssh_key_file)}"
    }

// Executando comandos shell após a construção da instância
    inline = [
      "sudo apt-get -y update",
      "sudo sed -i s/'127.0.0.1 localhost'/'127.0.0.1 localhost ${var.instance_name}'/g /etc/hosts"
    ]
  }
}
