resource "aws_subnet" "IGonzalez_1d_Subnets" {
     vpc_id = "${aws_vpc.EndavaTalentQA_VPC.id}"
     availability_zone = "${var.availability_zone}"
     cidr_block = "${var.subnet_cidr_block}"

     tags {
          Name = "${var.subnet_name}"
     }
}