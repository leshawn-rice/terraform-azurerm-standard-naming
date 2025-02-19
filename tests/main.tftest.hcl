run "test_as_minimal" {
  command = plan

  module {
    source = "./tests/test_as_minimal"
  }

  assert {
    condition     = module.test_as_minimal.name == "as1"
    error_message = "Expected minimal AnalysisServices name to be 'as1', got '${module.test_as_minimal.name}'."
  }
}

run "test_as_full" {
  command = plan

  module {
    source = "./tests/test_as_full"
  }

  assert {
    condition     = module.test_as_full.name == "asappfeprodeusfinance"
    error_message = "Expected full AnalysisServices name to be 'asappfeprodeusfinance', got '${module.test_as_full.name}'."
  }
}

run "test_apim_minimal" {
  command = plan

  module {
    source = "./tests/test_apim_minimal"
  }

  assert {
    condition     = module.test_apim_minimal.name == "apim"
    error_message = "Expected minimal API Management name to be 'apim', got '${module.test_apim_minimal.name}'."
  }
}

run "test_apim_full" {
  command = plan

  module {
    source = "./tests/test_apim_full"
  }

  assert {
    condition     = module.test_apim_full.name == "apim-apisvc-fe-prod-002-sales"
    error_message = "Expected full API Management name to be 'apim-apisvc-fe-prod-002-sales', got '${module.test_apim_full.name}'."
  }
}

run "test_vm_minimal" {
  command = plan

  module {
    source = "./tests/test_vm_minimal"
  }

  assert {
    condition     = module.test_vm_minimal.name == "vm"
    error_message = "Expected minimal VM name to be 'vm', got '${module.test_vm_minimal.name}'."
  }
}

run "test_vm_full" {
  command = plan

  module {
    source = "./tests/test_vm_full"
  }

  assert {
    condition     = module.test_vm_full.name == "vm-web-fe-prod-eus-001-finance"
    error_message = "Expected full VM name to be 'vm-web-fe-prod-eus-001-finance', got '${module.test_vm_full.name}'."
  }
}

run "test_vmss_minimal" {
  command = plan

  module {
    source = "./tests/test_vmss_minimal"
  }

  assert {
    condition     = module.test_vmss_minimal.name == "vmss"
    error_message = "Expected minimal VMSS name to be 'vmss', got '${module.test_vmss_minimal.name}'."
  }
}

run "test_vmss_full" {
  command = plan

  module {
    source = "./tests/test_vmss_full"
  }

  assert {
    condition     = module.test_vmss_full.name == "vmss-api-fe-prod-wus-003-it"
    error_message = "Expected full VMSS name to be 'vmss-api-fe-prod-wus-003-it', got '${module.test_vmss_full.name}'."
  }
}

run "test_nic_minimal" {
  command = plan

  module {
    source = "./tests/test_nic_minimal"
  }

  assert {
    condition     = module.test_nic_minimal.name == "nic"
    error_message = "Expected minimal NIC name to be 'nic', got '${module.test_nic_minimal.name}'."
  }
}

run "test_nic_full" {
  command = plan

  module {
    source = "./tests/test_nic_full"
  }

  assert {
    condition     = module.test_nic_full.name == "nic-net-fe-prod-cus-001-ops"
    error_message = "Expected full NIC name to be 'nic-net-fe-prod-cus-001-ops', got '${module.test_nic_full.name}'."
  }
}

run "test_vnet_minimal" {
  command = plan

  module {
    source = "./tests/test_vnet_minimal"
  }

  assert {
    condition     = module.test_vnet_minimal.name == "vnet"
    error_message = "Expected minimal VNet name to be 'vnet', got '${module.test_vnet_minimal.name}'."
  }
}

run "test_vnet_full" {
  command = plan

  module {
    source = "./tests/test_vnet_full"
  }

  assert {
    condition     = module.test_vnet_full.name == "vnet-corp-fe-prod-eus2-hr"
    error_message = "Expected full VNet name to be 'vnet-corp-fe-prod-eus2-hr', got '${module.test_vnet_full.name}'."
  }
}

run "test_snet_minimal" {
  command = plan

  module {
    source = "./tests/test_snet_minimal"
  }

  assert {
    condition     = module.test_snet_minimal.name == "snet"
    error_message = "Expected minimal Subnet name to be 'snet', got '${module.test_snet_minimal.name}'."
  }
}

run "test_snet_full" {
  command = plan

  module {
    source = "./tests/test_snet_full"
  }

  assert {
    condition     = module.test_snet_full.name == "snet-subnet-fe-prod-wus-001-finance"
    error_message = "Expected full Subnet name to be 'snet-subnet-fe-prod-wus-001-finance', got '${module.test_snet_full.name}'."
  }
}

run "test_pip_minimal" {
  command = plan

  module {
    source = "./tests/test_pip_minimal"
  }

  assert {
    condition     = module.test_pip_minimal.name == "pip"
    error_message = "Expected minimal Public IP name to be 'pip', got '${module.test_pip_minimal.name}'."
  }
}

run "test_pip_full" {
  command = plan

  module {
    source = "./tests/test_pip_full"
  }

  assert {
    condition     = module.test_pip_full.name == "pip-pip-fe-prod-cus-001-sales"
    error_message = "Expected full Public IP name to be 'pip-pip-fe-prod-cus-001-sales', got '${module.test_pip_full.name}'."
  }
}

run "test_st_minimal" {
  command = plan

  module {
    source = "./tests/test_st_minimal"
  }

  assert {
    condition     = module.test_st_minimal.name == "st"
    error_message = "Expected minimal Storage Account name to be 'st', got '${module.test_st_minimal.name}'."
  }
}

run "test_st_full" {
  command = plan

  module {
    source = "./tests/test_st_full"
  }

  assert {
    condition     = module.test_st_full.name == "ststorfeprod001it"
    error_message = "Expected full Storage Account name to be 'ststorfeprod001it', got '${module.test_st_full.name}'."
  }
}

run "test_acr_minimal" {
  command = plan

  module {
    source = "./tests/test_acr_minimal"
  }

  assert {
    condition     = module.test_acr_minimal.name == "cr"
    error_message = "Expected minimal Container Registry name to be 'cr', got '${module.test_acr_minimal.name}'."
  }
}

run "test_acr_full" {
  command = plan

  module {
    source = "./tests/test_acr_full"
  }

  assert {
    condition     = module.test_acr_full.name == "cracrfeproddev"
    error_message = "Expected full Container Registry name to be 'cracrfeproddev', got '${module.test_acr_full.name}'."
  }
}

run "test_app_minimal" {
  command = plan

  module {
    source = "./tests/test_app_minimal"
  }

  assert {
    condition     = module.test_app_minimal.name == "app"
    error_message = "Expected minimal App Service name to be 'app', got '${module.test_app_minimal.name}'."
  }
}

run "test_app_full" {
  command = plan

  module {
    source = "./tests/test_app_full"
  }

  assert {
    condition     = module.test_app_full.name == "app-webapp-fe-prod-marketing"
    error_message = "Expected full App Service name to be 'app-webapp-fe-prod-marketing', got '${module.test_app_full.name}'."
  }
}

run "test_sql_minimal" {
  command = plan

  module {
    source = "./tests/test_sql_minimal"
  }

  assert {
    condition     = module.test_sql_minimal.name == "sql"
    error_message = "Expected minimal SQL Server name to be 'sql', got '${module.test_sql_minimal.name}'."
  }
}

run "test_sql_full" {
  command = plan

  module {
    source = "./tests/test_sql_full"
  }

  assert {
    condition     = module.test_sql_full.name == "sql-sqlsrv-fe-prod-cus-001-finance"
    error_message = "Expected full SQL Server name to be 'sql-sqlsrv-fe-prod-cus-001-finance', got '${module.test_sql_full.name}'."
  }
}

run "test_cosmos_minimal" {
  command = plan

  module {
    source = "./tests/test_cosmos_minimal"
  }

  assert {
    condition     = module.test_cosmos_minimal.name == "cosmos"
    error_message = "Expected minimal Cosmos DB name to be 'cosmos', got '${module.test_cosmos_minimal.name}'."
  }
}

run "test_cosmos_full" {
  command = plan

  module {
    source = "./tests/test_cosmos_full"
  }

  assert {
    condition     = module.test_cosmos_full.name == "cosmoscosmosfeprod001analytics"
    error_message = "Expected full Cosmos DB name to be 'cosmoscosmosfeprod001analytics', got '${module.test_cosmos_full.name}'."
  }
}
