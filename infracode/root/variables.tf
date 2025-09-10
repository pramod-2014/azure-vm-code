variable "resource_group_name" {}
variable "location" {}

#virtual network variabels
variable "virtual_network_name" {}
variable "address_space" {}

#subnet variabels
variable "subnet_name" {}
variable "address_prefixes" {}

#virtual machine variabels
variable "virtual_machine_name" {}
variable "admin_username" {
  type        = string
  description = "VM username"
}

variable "admin_password" {
  type        = string
  description = "VM password"
  sensitive   = true
}

variable "network_interface_ids" {}

# network_interface variables
variable "network_interface_name" {}

variable "key_vault_name" {}


variable "pip_name" {
  
}
variable "public_ip_id" {
  description = "Public IP ID to associate with the NIC"
  type        = string
  default     = null  # optional, in case you want to make it optional
}


