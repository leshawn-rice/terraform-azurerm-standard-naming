module "test_cosmos_minimal" {
  source          = "../../"
  resource_type   = "cosmosdb" # maps to "cosmos"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}