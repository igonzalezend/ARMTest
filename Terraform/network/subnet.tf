resource "aws_subnet" "EndavaTalentQA_Subnet" {
     vpc_id = "${aws_vpc.EndavaTalentQA_VPC.id}"
     availability_zone = "${var.availability_zone}"
     cidr_block = "${var.subnet_cidr_block}"

     tags{
      Name = "EndavaTalentQA_Subnet"
      Created_by = "Ivan Gonzalez"
      Project_name = "Endava_Talent"
      start = "start"
      stop = "stop"
     }
}