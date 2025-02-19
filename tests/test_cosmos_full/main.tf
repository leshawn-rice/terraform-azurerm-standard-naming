module "test_cosmos_full" {
  source          = "../../"
  resource_type   = "cosmosdb"
  application     = "cosmos"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"
  business_unit   = "analytics"
  instance_number = "1"
}