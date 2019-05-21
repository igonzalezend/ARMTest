variable "ubuntu_account_number" {
  default = "099720109477"
}
variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "EndavaTalentQA"
}

variable "subnet_id" {
  type = "string"
}

variable "sg_id" {
  type = "list"
}

