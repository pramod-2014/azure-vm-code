resource "azurerm_resource_group" "aadu-rg" {
  name     = var.resource_group_name
  location = var.location
}