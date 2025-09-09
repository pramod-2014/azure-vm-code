resource_group_name = "demo_rg"
location            = "central india"

#virtual network variabels
virtual_network_name = "demo-vnet"
address_space        = ["10.0.0.0/16"]
#subnet variabels
subnet_name      = "demo_subnet"
address_prefixes = ["10.0.2.0/24"]

#virtual machine variabels
virtual_machine_name   = "demo-vm"

network_interface_ids = "azurerm_network_interface.nic.id"

# network_interface variables id
network_interface_name = "demo_nic"

#key vault variables
key_vault_name = "demo-key-vault111"
