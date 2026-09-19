# Name a single resource.
#
# The module computes a string; it creates nothing and needs no provider or
# credentials, so this example runs on its own.

terraform {
  required_version = ">= 1.10.5"
}

module "vm_name" {
  source  = "leshawn-rice/standard-naming/azurerm"
  version = "1.1.0"

  resource_type   = "virtual machine"
  business_unit   = "it"
  application     = "tf"
  workload        = "test"
  environment     = "dev"
  location        = "westus"
  instance_number = "1"
}

output "name" {
  description = "vm-it-tf-test-dev-wus-001"
  value       = module.vm_name.name
}
