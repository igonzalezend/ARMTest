resource "aws_internet_gateway" "EndavaTalentQA_IG" {
  vpc_id = "${aws_vpc.EndavaTalentQA_VPC.id}"

  tags{
      Name = "EndavaTalentQA_IG"
      Created_by = "Ivan Gonzalez"
      Project_name = "Endava_Talent"
      start = "start"
      stop = "stop"
    }
}