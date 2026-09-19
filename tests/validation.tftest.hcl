# Names that Azure would reject must fail the plan.
#
# Validation lives in preconditions on the is_name_valid output, so each of
# these runs expects that output to fail rather than to return false.

###############################################################
# Maximum length
###############################################################

run "storage_account_over_24_characters_fails" {
  command = plan

  variables {
    resource_type = "storage account"
    application   = "averyverylongapplicationname"
    workload      = "analyticsplatform"
    environment   = "production"
  }

  expect_failures = [output.is_name_valid]
}

run "key_vault_over_24_characters_fails" {
  command = plan

  variables {
    resource_type   = "key vault"
    business_unit   = "it"
    application     = "tf"
    workload        = "test"
    environment     = "dev"
    location        = "westus"
    instance_number = "1"
  }

  expect_failures = [output.is_name_valid]
}

run "aks_node_pool_over_12_characters_fails" {
  command = plan

  variables {
    resource_type   = "aks user node pool"
    environment     = "development"
    instance_number = "1"
  }

  expect_failures = [output.is_name_valid]
}

###############################################################
# Minimum length
###############################################################

run "bare_storage_account_abbreviation_is_too_short" {
  command = plan

  variables {
    resource_type = "storage account"
  }

  expect_failures = [output.is_name_valid]
}

run "bare_container_registry_abbreviation_is_too_short" {
  command = plan

  variables {
    resource_type = "container registry"
  }

  expect_failures = [output.is_name_valid]
}

run "bare_event_hub_namespace_abbreviation_is_too_short" {
  command = plan

  variables {
    resource_type = "event hubs namespace"
  }

  expect_failures = [output.is_name_valid]
}

###############################################################
# Character pattern
###############################################################

run "underscore_in_descriptor_fails_a_hyphen_only_type" {
  command = plan

  variables {
    resource_type = "container registry"
    application   = "my_app"
    environment   = "dev"
  }

  expect_failures = [output.is_name_valid]
}

run "space_in_descriptor_fails" {
  command = plan

  variables {
    resource_type = "virtual machine"
    application   = "my app"
    environment   = "dev"
  }

  expect_failures = [output.is_name_valid]
}

run "unrecognised_resource_type_with_a_space_fails_the_default_pattern" {
  command = plan

  variables {
    resource_type = "api management"
    environment   = "dev"
  }

  expect_failures = [output.is_name_valid]
}

run "hyphen_bearing_descriptor_fails_a_no_hyphen_type" {
  command = plan

  variables {
    resource_type = "gallery"
    application   = "tf-app"
    environment   = "dev"
  }

  expect_failures = [output.is_name_valid]
}
