module "resource_group" {
  source         = "../module/Resource_Group"
  resource_group = var.resource_group1
}
module "vnet" {
  source           = "../module/Virtual_Network"
  myVirtualNetwork = var.vnet
depends_on = [ module.resource_group] 
}
module "subnet" {
  source = "../module/Subnet"
  subnet = var.subnet
  depends_on = [ module.vnet ]  
  
}