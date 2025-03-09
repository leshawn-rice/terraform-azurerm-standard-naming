module "test_sql_minimal" {
  source          = "../../"
  resource_type   = "sqlserver"  # maps to "sql"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}