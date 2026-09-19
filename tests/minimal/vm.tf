module "test_vm_minimal" {
  source          = "../../"
  resource_type   = "virtualmachine" # maps to "vm"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}