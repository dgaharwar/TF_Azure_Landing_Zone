# Configure Terraform to set the required AzureRM provider
# version and features{} block.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.19.0"
    }
  }
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }
  }
}


# provider "azurerm" {
#   features {}
# }
provider "azurerm" {
  features {}
  subscription_id   = var.subscriptionId
  tenant_id         = var.tenantId
  client_id         = var.clientId
  client_secret     = var.clientSecret
}
