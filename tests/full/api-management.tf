module "test_api_management_full" {
  source          = "../../"
  resource_type   = "apimanagement"
  instance_number = "2"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
