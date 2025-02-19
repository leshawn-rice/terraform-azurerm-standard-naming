module "test_st_minimal" {
  source          = "../../"
  resource_type   = "storageaccount"  # maps to "st"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}