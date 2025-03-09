module "test_virtual_machine_scale_set_full" {
  source          = "../../"
  resource_type   = "virtualmachinescaleset"
  instance_number = "3"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
