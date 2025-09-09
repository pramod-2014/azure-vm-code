module "resource_group" {
  source              = "../modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  depends_on           = [module.resource_group]
  source               = "../modules/azurerm_virtual_network"
  virtual_network_name = var.virtual_network_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  address_space        = var.address_space
}

module "subnet" {
  depends_on           = [module.virtual_network]
  source               = "../modules/azurerm_subnet"
  subnet_name          = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}

module "nic" {
  depends_on             = [module.subnet]
  source                 = "../modules/azurerm_network_interface"
  network_interface_name = var.network_interface_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  subnet_id              = module.subnet.subnet_id
}

module "virtual_machine" {
  depends_on           = [module.nic]  
   source = "../modules/azurerm_virtual_machine"
  virtual_machine_name = var.virtual_machine_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  network_interface_id = module.nic.nic_id
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}

module "key_vault" {
  depends_on          = [module.resource_group]
  source              = "../modules/azurerm_key_vault"
  key_vault_name      = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "secret" {
    source      = "../modules/azurerm_key_vault_secret"
  vm_username = var.admin_username
  vm_password = var.admin_password
 key_vault_id = module.key_vault.key_vault_id
 depends_on     = [module.key_vault] 
}