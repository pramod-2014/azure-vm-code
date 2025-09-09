variable "virtual_machine_name" {}
variable "resource_group_name" {}
variable "location" {}
variable "admin_username" {
  type        = string
  description = "VM username"
}

variable "admin_password" {
  type        = string
  description = "VM password"
  sensitive   = true
}

variable "network_interface_id" {}
