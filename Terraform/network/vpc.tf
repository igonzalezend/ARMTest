resource "aws_vpc" "EndavaTalentQA_VPC" {
  cidr_block = "${var.vpc_cidr_block}"

  tags {
      Name = "EndavaTalentQA_VPC"
  }
}