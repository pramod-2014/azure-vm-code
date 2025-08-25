module "resource_group" {
  source              = "../modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network_name" {
  depends_on = [ var.resource_group_name ]
  source               = "../modules/azurerm_virtaul_network"
  virtual_network_name = var.virtual_network_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  address_space        = var.address_space

}
module "subnet_name" {
  source               = "../modules/azurerm_subnet"
  subnet_name          = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

}

module "nic" {
  source                 = "../modules/azurerm_network_interface"
  network_interface_name = var.network_interface_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  
  subnet_id              = module.subnet_name.subnet_id

}


module "virtual_mchine" {
  depends_on = [ var.resource_group_name ]
  source                = "../modules/azurerm_virtual_mchine"
  virtual_mchine_name   = var.virtual_mchine_name
  resource_group_name   = var.resource_group_name
  location              = var.location
    network_interface_id  = module.nic.nic_id
  admin_username        = var.admin_username
}



