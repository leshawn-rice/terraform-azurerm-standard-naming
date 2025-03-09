module "test_container_registry_full" {
  source          = "../../"
  resource_type   = "containerregistry"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
