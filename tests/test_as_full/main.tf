module "test_as_full" {
  source          = "../../"
  resource_type   = "analysisservices"  # maps to "as"
  application     = "app"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"  # mapped to "eus"
  business_unit   = "finance"
  instance_number = "1"
}