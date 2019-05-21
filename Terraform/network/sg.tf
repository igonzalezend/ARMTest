resource "aws_security_group" "EndavaTalent_SG" {
    name = "${var.sg_name}"
    description  = "${var.sg_description}"
    vpc_id = "${aws_vpc.EndavaTalentQA_VPC.id}"

    ingress {
       from_port = 6200
       to_port = 6200
       protocol = "tcp"

       cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"

        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 27017
        to_port = 27017
        protocol = "tcp"

        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"

        cidr_blocks = ["0.0.0.0/0"]
    }

    tags{
        Name = "EndavaTalent_SG"
        Created_by = "Ivan Gonzalez"
        Project_name = "Endava_Talent"
        start = "start"
        stop = "stop"
     }
}
