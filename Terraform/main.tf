 module "network" {
  source = "./network"
  
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
}
module "ec2" {
  source = "./ec2"

  subnet_id = "${module.network.EndavaTalent_QA_Subnet_id}"
  sg_id = ["${module.network.EndavaTalent_QA_SG_id}"]
}