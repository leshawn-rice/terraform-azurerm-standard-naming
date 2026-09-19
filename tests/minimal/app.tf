module "test_app_minimal" {
  source          = "../../"
  resource_type   = "appservice" # maps to "app"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}