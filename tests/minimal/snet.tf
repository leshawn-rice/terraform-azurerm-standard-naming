module "test_snet_minimal" {
  source          = "../../"
  resource_type   = "subnet"  # maps to "snet"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}