variable "availability_zone" {
  default = "us-east-1a"
}

variable "subnet_name" {
  default = "EndavaTalent_QA_Subnet"
}

variable "subnet_cidr_block" {
  type = "string"
}

variable "vpc_cidr_block" {
  type = "string"
}

variable "sg_name" {
  type = "string"
  default = "EndavaTalent_SG"
}

variable "sg_description" {
  type = "string"
  default = "Endava Talent SG to control ingress ports mostly"
}
