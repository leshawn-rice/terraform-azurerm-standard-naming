module "test_storage_account_minimal" {
  source        = "../../"
  resource_type = "storageaccount"

  instance_number = ""
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
}
