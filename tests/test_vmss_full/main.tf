module "test_vmss_full" {
  source          = "../../"
  resource_type   = "virtualmachinescaleset"
  application     = "api"
  workload        = "fe"
  environment     = "prod"
  location        = "westus"  # mapped to "wus" or "wus2"
  business_unit   = "it"
  instance_number = "3"
}