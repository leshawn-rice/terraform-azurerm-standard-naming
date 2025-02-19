#############################
# Microsoft.AnalysisServices (expected abbreviation: "as")
#############################
module "test_as_minimal" {
  source          = "../../"
  resource_type   = "analysisservices" # maps to "as"
  application     = ""
  workload        = "1"
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_as_full" {
  source          = "../../"
  resource_type   = "analysisservices" # → "as"
  application     = "app"              # e.g. "app"
  workload        = "fe"               # abbreviated "frontend"
  environment     = "prod"
  location        = "eastus" # mapped to "eus"
  business_unit   = "finance"
  instance_number = "1" # → ""
  # Expected: "as-app-fe-prod-eus-finance"
}

#############################
# Microsoft.ApiManagement (expected: "apim")
#############################
module "test_apim_minimal" {
  source          = "../../"
  resource_type   = "apimanagement" # → "apim"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_apim_full" {
  source          = "../../"
  resource_type   = "apimanagement"
  application     = "apisvc"
  workload        = "fe"
  environment     = "prod"
  location        = "westus" # → ""
  business_unit   = "sales"
  instance_number = "2" # → "002"
  # Expected: "apim-apisvc-fe-prod-002-sales"
}

#############################
# Virtual Machine (vm)
#############################
module "test_vm_minimal" {
  source          = "../../"
  resource_type   = "virtualmachine" # → "vm"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_vm_full" {
  source          = "../../"
  resource_type   = "virtualmachine"
  application     = "web"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus" # → "eus"
  business_unit   = "finance"
  instance_number = "1" # → "001"
  # Expected: "vm-web-fe-prod-eus-001-finance"
}

#############################
# Virtual Machine Scale Set (vmss)
#############################
module "test_vmss_minimal" {
  source          = "../../"
  resource_type   = "virtualmachinescaleset" # → "vmss"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_vmss_full" {
  source          = "../../"
  resource_type   = "virtualmachinescaleset"
  application     = "api"
  workload        = "fe"
  environment     = "prod"
  location        = "westus" # → "wus"
  business_unit   = "it"
  instance_number = "3" # → "003"
  # Expected: "vmss-api-fe-prod-wus2-003-it"
}

#############################
# Network Interface (nic)
#############################
module "test_nic_minimal" {
  source          = "../../"
  resource_type   = "networkinterface" # → "nic"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_nic_full" {
  source          = "../../"
  resource_type   = "networkinterface"
  application     = "net"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus" # assume maps to "cus"
  business_unit   = "ops"
  instance_number = "1" # → "001"
  # Expected: "nic-net-fe-prod-cus-001-ops"
}

#############################
# Virtual Network (vnet)
#############################
module "test_vnet_minimal" {
  source          = "../../"
  resource_type   = "virtualnetwork" # → "vnet"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_vnet_full" {
  source          = "../../"
  resource_type   = "virtualnetwork"
  application     = "corp"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus2" # → "eus2" (or "eus" depending on your mapping)
  business_unit   = "hr"
  instance_number = "1" # → ""
  # Expected: "vnet-corp-fe-prod-eus2-hr"
}

#############################
# Subnet (sub)
#############################
module "test_snet_minimal" {
  source          = "../../"
  resource_type   = "subnet" # → "sub"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_snet_full" {
  source          = "../../"
  resource_type   = "subnet"
  application     = "subnet"
  workload        = "fe"
  environment     = "prod"
  location        = "westus" # → "wus"
  business_unit   = "finance"
  instance_number = "1" # → "001"
  # Expected: snet-subnet-fe-prod-wus-001-finance"
}

#############################
# Public IP (pip)
#############################
module "test_pip_minimal" {
  source          = "../../"
  resource_type   = "publicip" # → "pip"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_pip_full" {
  source          = "../../"
  resource_type   = "publicip"
  application     = "pip"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus" # → "cus"
  business_unit   = "sales"
  instance_number = "1" # → "001"
  # Expected: "pip-pip-fe-prod-cus-001-sales"
}

#############################
# Storage Account (st)
#############################
module "test_st_minimal" {
  source          = "../../"
  resource_type   = "storageaccount" # → "st"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_st_full" {
  source          = "../../"
  resource_type   = "storageaccount"
  application     = "stor"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus" # region mapping ignored due to st restrictions
  business_unit   = "it"
  instance_number = "1" # → "001"
  # Expected (no delimiters for st): "ststorfeprod001it"
}

#############################
# Container Registry (acr)
#############################
module "test_acr_minimal" {
  source          = "../../"
  resource_type   = "containerregistry" # → "cr"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_acr_full" {
  source          = "../../"
  resource_type   = "containerregistry"
  application     = "acr"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus" # ""
  business_unit   = "dev"
  instance_number = "1" # → ""
  # Expected: "cracrfeproddev"
}

#############################
# App Service (app)
#############################
module "test_app_minimal" {
  source          = "../../"
  resource_type   = "appservice" # → "app"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_app_full" {
  source          = "../../"
  resource_type   = "appservice"
  application     = "webapp"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus" # → ""
  business_unit   = "marketing"
  instance_number = "1" # → "001"
  # Expected: "app-webapp-fe-prod-001-marketing"
}

#############################
# SQL Server (sql)
#############################
module "test_sql_minimal" {
  source          = "../../"
  resource_type   = "sqlserver" # → "sql"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_sql_full" {
  source          = "../../"
  resource_type   = "sqlserver"
  application     = "sqlsrv"
  workload        = "fe"
  environment     = "prod"
  location        = "centralus" # → "cus"
  business_unit   = "finance"
  instance_number = "1" # → "001"
  # Expected: "sql-sqlsrv-fe-prod-cus-001-finance"
}

#############################
# Cosmos DB (cosmos)
#############################
module "test_cosmos_minimal" {
  source          = "../../"
  resource_type   = "cosmosdb" # → "cosmos"
  application     = ""
  workload        = ""
  environment     = ""
  location        = ""
  business_unit   = ""
  instance_number = ""
}

module "test_cosmos_full" {
  source          = "../../"
  resource_type   = "cosmosdb"
  application     = "cosmos"
  workload        = "fe"
  environment     = "prod"
  location        = "eastus" # → ""
  business_unit   = "analytics"
  instance_number = "1" # → "001"
  # Expected: "cosmoscosmosfeprod001analytics"
}
