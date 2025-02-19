module "test_vnet_full" {
  source          = "../../"
  resource_type   = "virtualnetwork"
  application     = "corp"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus2"  # mapped to "eus2" (or similar)
  business_unit   = "hr"
  instance_number = "1"
}