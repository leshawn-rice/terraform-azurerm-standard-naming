run "test_analysis_services_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_analysis_services_full.name == "asittftestdevwus"
    error_message = "Expected full AnalysisServices name to be 'asittftestdevwus', got '${module.test_analysis_services_full.name}'."
  }
}

run "test_api_management_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_api_management_full.name == "apim-it-tf-test-dev-002"
    error_message = "Expected full API Management name to be 'apim-it-tf-test-dev-002', got '${module.test_api_management_full.name}'."
  }
}

run "test_virtual_machine_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_virtual_machine_full.name == "vm-it-tf-test-dev-wus-001"
    error_message = "Expected full VM name to be 'vm-it-tf-test-dev-wus-001', got '${module.test_virtual_machine_full.name}'."
  }
}

run "test_virtual_machine_scale_set_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_virtual_machine_scale_set_full.name == "vmss-it-tf-test-dev-wus-003"
    error_message = "Expected full VMSS name to be 'vmss-it-tf-test-dev-wus-003', got '${module.test_virtual_machine_scale_set_full.name}'."
  }
}


run "test_network_interface_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_network_interface_full.name == "nic-it-tf-test-dev-wus-001"
    error_message = "Expected full NIC name to be 'nic-it-tf-test-dev-wus-001, got '${module.test_network_interface_full.name}'."
  }
}

run "test_container_registry_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_container_registry_full.name == "crittftestdev"
    error_message = "Expected full Container Registry name to be 'crittftestdev', got '${module.test_container_registry_full.name}'."
  }
}

run "test_virtual_network_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_virtual_network_full.name == "vnet-it-tf-test-dev-wus"
    error_message = "Expected full VNet name to be 'vnet-it-tf-test-dev-wus', got '${module.test_virtual_network_full.name}'."
  }
}

run "test_subnet_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_subnet_full.name == "snet-it-tf-test-dev-wus-001"
    error_message = "Expected full Subnet name to be 'snet-it-tf-test-dev-wus-001', got '${module.test_subnet_full.name}'."
  }
}

run "test_private_endpoint_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_private_endpoint_full.name == "pip-it-tf-test-dev-wus-001"
    error_message = "Expected full Public IP name to be 'pip-it-tf-test-dev-wus-001', got '${module.test_private_endpoint_full.name}'."
  }
}

run "test_storage_account_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_storage_account_full.name == "stittftestdev001"
    error_message = "Expected full Storage Account name to be 'stittftestdev001', got '${module.test_storage_account_full.name}'."
  }
}

run "test_app_service_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_app_service_full.name == "app-it-tf-test-dev"
    error_message = "Expected full App Service name to be 'app-it-tf-test-dev', got '${module.test_app_service_full.name}'."
  }
}

run "test_sql_server_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_sql_server_full.name == "sql-it-tf-test-dev-wus-001"
    error_message = "Expected full SQL Server name to be 'sql-it-tf-test-dev-wus-001', got '${module.test_sql_server_full.name}'."
  }
}

run "test_cosmos_database_full" {
  command = plan

  module {
    source = "./tests/full"
  }

  assert {
    condition     = module.test_cosmos_database_full.name == "cosmosittftestdev001"
    error_message = "Expected full Cosmos DB name to be 'cosmosittftestdev001', got '${module.test_cosmos_database_full.name}'."
  }
}
