module "test_sql_full" {
  source          = "../../"
  resource_type   = "sqlserver"
  application     = "sqlsrv"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus"
  business_unit   = "finance"
  instance_number = "1"
}