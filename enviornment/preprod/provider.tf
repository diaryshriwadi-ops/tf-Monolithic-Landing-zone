terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"

    }
  }
}

provider "azurerm" {
  features {
     key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = "7a0d81a6-8d2f-4ed3-b0b2-9477728af43c"
}