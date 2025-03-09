module "test_network_interface_full" {
  source          = "../../"
  resource_type   = "networkinterface"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
