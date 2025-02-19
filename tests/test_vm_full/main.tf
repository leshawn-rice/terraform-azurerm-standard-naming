module "test_vm_full" {
  source          = "../../"
  resource_type   = "virtualmachine"
  application     = "web"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"  # mapped to "eus"
  business_unit   = "finance"
  instance_number = "1"
}