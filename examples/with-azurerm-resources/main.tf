# Wire the generated names into real resources.
#
# Unlike the other examples this one declares the azurerm provider, because it
# creates resources. `terraform plan` needs Azure credentials; the naming module
# itself does not.

terraform {
  required_version = ">= 1.10.5"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  location = "eastus2"

  naming = {
    business_unit = "it"
    application   = "pay"
    environment   = "prod"
    location      = local.location
  }
}

module "resource_group_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type = "resource group"

  business_unit = local.naming.business_unit
  application   = local.naming.application
  environment   = local.naming.environment
  location      = local.naming.location
}

module "storage_account_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type   = "storage account"
  instance_number = "1"

  business_unit = local.naming.business_unit
  application   = local.naming.application
  environment   = local.naming.environment
  location      = local.naming.location
}

resource "azurerm_resource_group" "this" {
  name     = module.resource_group_name.name # rg-it-pay-prod
  location = local.location
}

resource "azurerm_storage_account" "this" {
  name                     = module.storage_account_name.name # stitpayprod001
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "storage_account_name" {
  description = "The name the module generated for the storage account."
  value       = azurerm_storage_account.this.name
}
