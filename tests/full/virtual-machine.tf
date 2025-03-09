module "test_virtual_machine_full" {
  source          = "../../"
  resource_type   = "virtualmachine"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
