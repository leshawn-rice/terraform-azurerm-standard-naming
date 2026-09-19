module "test_vmss_minimal" {
  source          = "../../"
  resource_type   = "virtualmachinescaleset" # maps to "vmss"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}