module "test_st_full" {
  source          = "../../"
  resource_type   = "storageaccount"
  application     = "stor"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"  # region mapping ignored for st
  business_unit   = "it"
  instance_number = "1"
}