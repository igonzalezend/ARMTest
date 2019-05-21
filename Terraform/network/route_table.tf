resource "aws_route_table" "EndavaTalentQA_RT" {

    vpc_id = "${aws_vpc.EndavaTalentQA_VPC.id}"

    route {
        cidr_block = "10.0.0.0/0"
        gateway_id = "${aws_internet_gateway.EndavaTalentQA_IG.id}"
    }

    tags{
      Name = "EndavaTalentQA_RT"
      Created_by = "Ivan Gonzalez"
      Project_name = "Endava_Talent"
      start = "start"
      stop = "stop"
    }
}

resource "aws_route_table_association" "EndavaTalentQA_RTA" {
    subnet_id      = "${aws_subnet.EndavaTalentQA_Subnet.id}"
    route_table_id = "${aws_route_table.EndavaTalentQA_RT.id}"
}