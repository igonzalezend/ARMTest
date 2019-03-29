resource "azurerm_resource_group" "Endava_Talent_RG" {
  name = "${var.Endava_Talent_RG_Name}"
  location = "${var.Endava_Talent_Location}"
}
