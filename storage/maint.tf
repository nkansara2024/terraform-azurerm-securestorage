terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.43.0"
    }
  }
}
provider "azurerm" {
    features {}
    skip_provider_registration = true
}
resource "azurerm_resource_group" "rg" {
    name = "812-f9528567-create-a-private-module-registry-in-t" 
    location = "westus"
}
module "securestorage" {
  source  = "app.terraform.io/TerraDemoOrg2024/securestorage/azurerm"
  version = "1.0.0"
  # insert required variables here
  resource_group_name=azurerm_resource_group.rg.name
  location=azurerm_resource_group.rg.location
  storage_account_name="strg101"
  environment="Production"
  
}
