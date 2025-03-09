module "test_virtual_network_full" {
  source          = "../../"
  resource_type   = "virtualnetwork"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
