run "test_as_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_as_minimal.name == "as1"
    error_message = "Expected minimal AnalysisServices name to be 'as1', got '${module.test_as_minimal.name}'."
  }
}

run "test_apim_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_apim_minimal.name == "apim"
    error_message = "Expected minimal API Management name to be 'apim', got '${module.test_apim_minimal.name}'."
  }
}

run "test_vm_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_vm_minimal.name == "vm"
    error_message = "Expected minimal VM name to be 'vm', got '${module.test_vm_minimal.name}'."
  }
}

run "test_vmss_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_vmss_minimal.name == "vmss"
    error_message = "Expected minimal VMSS name to be 'vmss', got '${module.test_vmss_minimal.name}'."
  }
}

run "test_nic_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_nic_minimal.name == "nic"
    error_message = "Expected minimal NIC name to be 'nic', got '${module.test_nic_minimal.name}'."
  }
}

run "test_acr_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_acr_minimal.name == "cr"
    error_message = "Expected minimal Container Registry name to be 'cr', got '${module.test_acr_minimal.name}'."
  }
}

run "test_cosmos_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_cosmos_minimal.name == "cosmos"
    error_message = "Expected minimal Cosmos DB name to be 'cosmos', got '${module.test_cosmos_minimal.name}'."
  }
}

run "test_sql_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_sql_minimal.name == "sql"
    error_message = "Expected minimal SQL Server name to be 'sql', got '${module.test_sql_minimal.name}'."
  }
}

run "test_app_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_app_minimal.name == "app"
    error_message = "Expected minimal App Service name to be 'app', got '${module.test_app_minimal.name}'."
  }
}

run "test_pip_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_pip_minimal.name == "pip"
    error_message = "Expected minimal Public IP name to be 'pip', got '${module.test_pip_minimal.name}'."
  }
}

run "test_storage_account_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_storage_account_minimal.name == "st"
    error_message = "Expected minimal Storage Account name to be 'st', got '${module.test_storage_account_minimal.name}'."
  }
}

run "test_snet_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_snet_minimal.name == "snet"
    error_message = "Expected minimal Subnet name to be 'snet', got '${module.test_snet_minimal.name}'."
  }
}

run "test_vnet_minimal" {
  command = plan

  module {
    source = "./tests/minimal"
  }

  assert {
    condition     = module.test_vnet_minimal.name == "vnet"
    error_message = "Expected minimal VNet name to be 'vnet', got '${module.test_vnet_minimal.name}'."
  }
}
