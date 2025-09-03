variable "resource_group_name" {}
variable "location" {}

#virtual network variabels
variable "virtual_network_name" {}
variable "address_space" {}

#subnet variabels
variable "subnet_name" {}
variable "address_prefixes" {}

#virtual machine variabels
variable "virtual_mchine_name" {}
variable "admin_username" {}
variable "network_interface_ids" {}

# network_interface variables
variable "network_interface_name" {}
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}