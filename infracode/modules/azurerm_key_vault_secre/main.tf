
module "keyvault_secrets" {
  source       = "../modules/azurerm_key_vault_secret"
  key_vault_id = module.keyvault.id

  secrets = {
    admin-username = "myadmin"
    admin-password = "SuperSecretPassword123!"
  }
}