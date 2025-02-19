module "test_as_minimal" {
  source          = "../../"
  resource_type   = "analysisservices" # maps to "as"
  application     = ""
  workload        = "1"
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}
