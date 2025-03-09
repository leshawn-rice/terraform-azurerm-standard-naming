module "test_app_service_full" {
  source          = "../../"
  resource_type   = "appservice"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
