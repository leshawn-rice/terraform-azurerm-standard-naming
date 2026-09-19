# Name every resource in a stack from one set of descriptors.
#
# The descriptors that are the same for the whole stack live in a single locals
# block; each module call adds only what is specific to that resource. Note that
# the resource type decides which segments survive: the resource group and
# virtual network drop the instance number, and the storage account drops both
# the region and its separators.

terraform {
  required_version = ">= 1.10.5"
}

locals {
  naming = {
    business_unit = "it"
    application   = "payments"
    environment   = "prod"
    location      = "eastus2"
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

module "virtual_network_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type = "virtual network"

  business_unit = local.naming.business_unit
  application   = local.naming.application
  environment   = local.naming.environment
  location      = local.naming.location
}

module "subnet_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type   = "subnet"
  workload        = "api"
  instance_number = "1"

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

  # "payments" would push the name past the 24-character limit for storage
  # accounts once the other segments are added, so this one is shortened.
  application = "pay"

  business_unit = local.naming.business_unit
  environment   = local.naming.environment
  location      = local.naming.location
}

output "names" {
  description = "The generated name for each resource in the stack."
  value = {
    resource_group  = module.resource_group_name.name
    virtual_network = module.virtual_network_name.name
    subnet          = module.subnet_name.name
    storage_account = module.storage_account_name.name
  }
}
