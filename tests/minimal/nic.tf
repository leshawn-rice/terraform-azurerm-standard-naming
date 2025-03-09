module "test_nic_minimal" {
  source          = "../../"
  resource_type   = "networkinterface"  # maps to "nic"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}