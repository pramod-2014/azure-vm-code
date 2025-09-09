resource "azurerm_key_vault_secret" "vm_username" {
  name         = "vm-admin-username"
  value        = var.vm_username
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "vm_password" {
      name         = "vm-admin-password"
  value        = var.vm_password
  key_vault_id = var.key_vault_id
}


