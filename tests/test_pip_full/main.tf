module "test_pip_full" {
  source          = "../../"
  resource_type   = "publicip"
  application     = "pip"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus"  # mapped to "cus"
  business_unit   = "sales"
  instance_number = "1"
}