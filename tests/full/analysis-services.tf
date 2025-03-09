module "test_analysis_services_full" {
  source          = "../../"
  resource_type   = "analysisservices"
  instance_number = "1"

  application   = local.application
  workload      = local.workload
  environment   = local.environment
  location      = local.location
  business_unit = local.business_unit
}
