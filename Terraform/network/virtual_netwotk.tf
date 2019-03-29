resource "azurerm_virtual_network" "Endava_Talent_VN" {
  address_space = "${var.Endava_Talent_VN_Address_Space}"
  location = "${var.Endava_Talent_Location}"
  name = "${var.Endava_Talent_VN_Name}"
  resource_group_name = "${azurerm_resource_group.Endava_Talent_RG.name}"
}
