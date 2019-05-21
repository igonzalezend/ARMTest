resource "aws_vpc" "EndavaTalentQA_VPC" {
  cidr_block = "${var.vpc_cidr_block}"

  tags{
      Name = "EndavaTalentQA_VPC"
      Created_by = "Ivan Gonzalez"
      Project_name = "Endava_Talent"
      start = "start"
      stop = "stop"
  }
}