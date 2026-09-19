module "test_vnet_minimal" {
  source          = "../../"
  resource_type   = "virtualnetwork" # maps to "vnet"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}