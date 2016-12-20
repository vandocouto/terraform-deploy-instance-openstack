variable "instance_name" {
  default = "terraform"
}

variable "image" {
  default = "Ubuntu16"
}

variable "ubuntu16_image_id" {
  default = "860338bb-fc63-4124-8973-4f238fa379df"
}

variable "flavor" {
  default = "m1.large"
}

variable "region" {
  default = "RegionOne"
}

variable "key_pair" {
  default = "infra-icasei"
}

variable "security_group" {
  default = "my_secgroup"
}

variable "floating_ip" {
  default = "192.168.3.101"
}

variable "network_uuid" {
  default = "db4d047e-2ae2-4bf7-8323-668de66275b3"
}

variable "ssh_user_name" {
  default = "ubuntu"
}

variable "ssh_key_file" {
  default = "../chave/infra.pem"
}

variable "external_gateway" {
  default = "11702078-9429-4ada-bf84-d9166bd368f8"
}

