resource "azurerm_subnet" "Endava_Talent_Frontend_Subnet" {
  address_prefix = "${var.Endava_Talent_Frontend_Subnet_Address_Prefix}"
  name = "${var.Endava_Talent_Frontend_Subnet_Name}"
  resource_group_name = "${azurerm_resource_group.Endava_Talent_RG.name}"
  virtual_network_name = "${azurerm_virtual_network.Endava_Talent_VN.name}"
}