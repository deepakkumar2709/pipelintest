resource "azurerm_virtual_network" "vnts" {
    for_each = var.myVirtualNetwork
     name         = each.value.vnet_name
    location            = each.value.loction
    resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
  
}