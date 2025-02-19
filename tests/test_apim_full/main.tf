module "test_apim_full" {
  source          = "../../"
  resource_type   = "apimanagement"
  application     = "apisvc"
  workload        = "fe"
  environment     = "prod"
  location        = "westus"  # mapped to "wus" or "wus2" depending on your region map
  business_unit   = "sales"
  instance_number = "2"
}