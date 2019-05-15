resource "aws_instance" "EndavaTalent_QA" {
  ami = "${data.aws_ami.ubuntu-18_04.id}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  availability_zone = "us-east-1a"
  key_name = "${var.key_name}"

  tags{
      Name = "EndavaTalent_QA"
  }
}