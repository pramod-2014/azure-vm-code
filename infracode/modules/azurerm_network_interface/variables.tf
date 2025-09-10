# network_interface variables

variable "network_interface_name" {}
variable "resource_group_name" {}
variable "location" {}
variable "subnet_id" {
  
}
variable "public_ip_id" {
  description = "Public IP ID to associate with the NIC"
  type        = string
  default     = null  # optional, in case you want to make it optional
}
