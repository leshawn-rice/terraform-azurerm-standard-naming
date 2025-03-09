module "test_acr_minimal" {
  source          = "../../"
  resource_type   = "containerregistry" # maps to "acr"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}
