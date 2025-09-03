terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
#  subscription_id = "a29ac6ee-0d4f-41fe-8359-df26a6fce56c"

#  subscription_id = var.subscription_id
#   client_id       = var.client_id
#   client_secret   = var.client_secret
#   tenant_id       = var.tenant_id
  
}


data "azurerm_client_config" "current" {}