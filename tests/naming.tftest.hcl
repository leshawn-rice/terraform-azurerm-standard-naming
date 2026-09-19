# Behaviour of the name-building pipeline, run directly against the root module.
#
# These cover the transformations the generated name depends on: alias
# resolution, case and whitespace normalisation, region abbreviation, instance
# padding, the delimiter rule, and the per-type segment omissions.

###############################################################
# Resource type resolution
###############################################################

run "alias_spaced_form_resolves_to_abbreviation" {
  command = plan

  variables {
    resource_type = "virtual machine"
    environment   = "dev"
  }

  assert {
    condition     = output.name == "vm-dev"
    error_message = "Spaced alias should resolve to 'vm', got '${output.name}'."
  }
}

run "alias_compact_form_resolves_to_abbreviation" {
  command = plan

  variables {
    resource_type = "virtualmachine"
    environment   = "dev"
  }

  assert {
    condition     = output.name == "vm-dev"
    error_message = "Compact alias should resolve to 'vm', got '${output.name}'."
  }
}

run "resource_type_is_case_insensitive_and_trimmed" {
  command = plan

  variables {
    resource_type = "  Virtual Machine  "
    environment   = "dev"
  }

  assert {
    condition     = output.name == "vm-dev"
    error_message = "Resource type should be trimmed and lowercased, got '${output.name}'."
  }
}

run "unrecognised_resource_type_is_used_verbatim" {
  command = plan

  variables {
    resource_type = "Widget"
    environment   = "dev"
  }

  assert {
    condition     = output.name == "widget-dev"
    error_message = "Unknown resource type should pass through lowercased, got '${output.name}'."
  }
}

###############################################################
# Descriptor normalisation
###############################################################

run "descriptors_are_lowercased_and_trimmed" {
  command = plan

  variables {
    resource_type = "vm"
    business_unit = "  IT  "
    application   = "TF"
    environment   = " Dev "
  }

  assert {
    condition     = output.name == "vm-it-tf-dev"
    error_message = "Descriptors should be trimmed and lowercased, got '${output.name}'."
  }
}

run "empty_descriptors_are_dropped_without_doubling_separators" {
  command = plan

  variables {
    resource_type = "vm"
    business_unit = ""
    application   = "tf"
    workload      = ""
    environment   = "dev"
  }

  assert {
    condition     = output.name == "vm-tf-dev"
    error_message = "Empty segments should collapse, got '${output.name}'."
  }
}

run "null_descriptors_are_treated_as_empty" {
  command = plan

  variables {
    resource_type = "vm"
    business_unit = null
    application   = null
    workload      = null
    environment   = "dev"
    location      = null
  }

  assert {
    condition     = output.name == "vm-dev"
    error_message = "Null descriptors should be dropped, got '${output.name}'."
  }
}

run "segments_are_emitted_in_documented_order" {
  command = plan

  variables {
    resource_type   = "vm"
    business_unit   = "it"
    application     = "tf"
    workload        = "test"
    environment     = "dev"
    location        = "westus"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "vm-it-tf-test-dev-wus-001"
    error_message = "Segment order should be abbr/bu/app/workload/env/region/instance, got '${output.name}'."
  }
}

###############################################################
# Region abbreviation
###############################################################

run "region_compact_form_is_abbreviated" {
  command = plan

  variables {
    resource_type = "vm"
    location      = "westus2"
  }

  assert {
    condition     = output.name == "vm-wus2"
    error_message = "Compact region should abbreviate to 'wus2', got '${output.name}'."
  }
}

run "region_spaced_form_is_abbreviated" {
  command = plan

  variables {
    resource_type = "vm"
    location      = "West US 2"
  }

  assert {
    condition     = output.name == "vm-wus2"
    error_message = "Spaced region should abbreviate to 'wus2', got '${output.name}'."
  }
}

run "unrecognised_region_is_used_verbatim" {
  command = plan

  variables {
    resource_type = "vm"
    location      = "MarsNorth"
  }

  assert {
    condition     = output.name == "vm-marsnorth"
    error_message = "Unknown region should pass through lowercased, got '${output.name}'."
  }
}

###############################################################
# Instance number
###############################################################

run "instance_number_is_zero_padded_to_three_digits" {
  command = plan

  variables {
    resource_type   = "vm"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "vm-001"
    error_message = "Instance should pad to 001, got '${output.name}'."
  }
}

run "instance_number_above_999_is_not_truncated" {
  command = plan

  variables {
    resource_type   = "vm"
    instance_number = "1234"
  }

  assert {
    condition     = output.name == "vm-1234"
    error_message = "Instance above 999 should be kept whole, got '${output.name}'."
  }
}

###############################################################
# Per-resource-type rules
###############################################################

run "no_delimiter_type_concatenates_segments" {
  command = plan

  variables {
    resource_type   = "storage account"
    business_unit   = "it"
    application     = "tf"
    environment     = "dev"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "stittfdev001"
    error_message = "Storage account should carry no hyphens, got '${output.name}'."
  }
}

run "gallery_is_concatenated_because_hyphens_are_illegal" {
  command = plan

  variables {
    resource_type   = "gallery"
    application     = "tf"
    environment     = "dev"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "galtfdev001"
    error_message = "Compute gallery forbids hyphens, got '${output.name}'."
  }
}

run "non_regional_type_drops_the_region_segment" {
  command = plan

  variables {
    resource_type = "app service"
    environment   = "dev"
    location      = "westus"
  }

  assert {
    condition     = output.name == "app-dev"
    error_message = "App Service should drop the region, got '${output.name}'."
  }
}

run "non_instanced_type_drops_the_instance_segment" {
  command = plan

  variables {
    resource_type   = "virtual network"
    environment     = "dev"
    location        = "westus"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "vnet-dev-wus"
    error_message = "Virtual network should drop the instance, got '${output.name}'."
  }
}

run "type_can_drop_both_region_and_instance" {
  command = plan

  variables {
    resource_type   = "container registry"
    environment     = "dev"
    location        = "westus"
    instance_number = "1"
  }

  assert {
    condition     = output.name == "crdev"
    error_message = "Container registry should drop region and instance, got '${output.name}'."
  }
}

run "policy_definition_drops_region_and_instance" {
  command = plan

  variables {
    resource_type   = "azure policy definition"
    environment     = "dev"
    location        = "westus"
    instance_number = "2"
  }

  assert {
    condition     = output.name == "policy-dev"
    error_message = "Policy definitions are global and singular, got '${output.name}'."
  }
}

run "storsimple_friendly_names_resolve" {
  command = plan

  variables {
    resource_type = "Azure StorSimple"
    environment   = "dev"
  }

  assert {
    condition     = output.name == "ssimp-dev"
    error_message = "'Azure StorSimple' should resolve to 'ssimp', got '${output.name}'."
  }
}

run "is_name_valid_is_true_for_a_valid_name" {
  command = plan

  variables {
    resource_type = "vm"
    environment   = "dev"
  }

  assert {
    condition     = output.is_name_valid
    error_message = "is_name_valid should be true for a valid name."
  }
}
