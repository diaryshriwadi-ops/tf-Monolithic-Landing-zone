terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7a0d81a6-8d2f-4ed3-b0b2-9477728af43c"

}