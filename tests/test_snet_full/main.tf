module "test_snet_full" {
  source          = "../../"
  resource_type   = "subnet"
  application     = "subnet"
  workload        = "fe"
  environment     = "prod"
  location        = "westus"  # mapped to "wus" or "wus2"
  business_unit   = "finance"
  instance_number = "1"
}