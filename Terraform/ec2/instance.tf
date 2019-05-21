resource "aws_instance" "EndavaTalent_QA" {
  ami = "${data.aws_ami.ubuntu-18_04.id}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  availability_zone = "us-east-1a"
  key_name = "${var.key_name}"

  user_data = "${file("${path.module}/user-data.sh")}"

  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.sg_id}"]

  tags{
      Name = "EndavaTalent_QA"
      Created_by = "Ivan Gonzalez"
      Project_name = "Endava_Talent"
      start = "start"
      stop = "stop"
  }
}