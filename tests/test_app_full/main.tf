module "test_app_full" {
  source          = "../../"
  resource_type   = "appservice"
  application     = "webapp"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"
  business_unit   = "marketing"
  instance_number = "1"
}