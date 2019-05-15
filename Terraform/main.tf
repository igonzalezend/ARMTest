 module "network" {
  source = "./network"
  
  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block = "10.0.7.0/24"


}
module "ec2" {
  source = "./ec2"
}