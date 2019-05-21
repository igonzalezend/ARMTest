output "EndavaTalent_QA_Subnet_id" {
  value = "${aws_subnet.EndavaTalentQA_Subnet.id}"
}
output "EndavaTalent_QA_SG_id" {
  value = "${aws_security_group.EndavaTalent_SG.id}"
}

