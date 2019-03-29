module "network" {
  source = "./network"
  
  Endava_Talent_VN_Address_Space = ["10.0.0.0/16"]
  Endava_Talent_Frontend_Subnet_Address_Prefix = "10.0.1.0/24"
}
