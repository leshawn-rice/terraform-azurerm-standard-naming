module "test_apim_minimal" {
  source          = "../../"
  resource_type   = "apimanagement"  # maps to "apim"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}