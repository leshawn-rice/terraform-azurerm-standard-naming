module "test_acr_full" {
  source          = "../../"
  resource_type   = "containerregistry"
  application     = "acr"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus"
  business_unit   = "dev"
  instance_number = "1"
}