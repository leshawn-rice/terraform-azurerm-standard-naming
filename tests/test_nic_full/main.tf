module "test_nic_full" {
  source          = "../../"
  resource_type   = "networkinterface"
  application     = "net"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus"  # mapped to "cus"
  business_unit   = "ops"
  instance_number = "1"
}