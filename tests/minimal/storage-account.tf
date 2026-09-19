# A bare "st" is only 2 characters; Microsoft.Storage/storageAccounts requires
# at least 3, so the minimal case for this type still needs one descriptor.
module "test_storage_account_minimal" {
  source        = "../../"
  resource_type = "storageaccount"

  instance_number = "1"
  application     = ""
  workload        = ""
  environment     = "dev"
  location        = ""
  business_unit   = ""
}
