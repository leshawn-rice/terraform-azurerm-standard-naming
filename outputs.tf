output "is_name_valid" {
  value       = true
  description = "Always `true`. The preconditions on this output enforce the minimum length, maximum length and character pattern for the resource type, so an invalid name fails the plan rather than returning `false`."

  precondition {
    condition     = length(local.name) >= local.name_min_length
    error_message = "The resource name '${local.name}' is shorter than the minimum of ${local.name_min_length} characters for resource type '${var.resource_type}'."
  }

  precondition {
    condition     = length(local.name) <= local.name_max_length
    error_message = "The resource name '${local.name}' exceeds the maximum allowed length of ${local.name_max_length} characters for resource type '${var.resource_type}'."
  }

  precondition {
    condition     = can(regex(local.name_pattern, local.name))
    error_message = "The resource name '${local.name}' does not match the required pattern: ${local.name_pattern} for resource type '${var.resource_type}'."
  }
}

output "name" {
  value       = local.name
  description = "The generated resource name, in the form `<abbreviation>-<business_unit>-<application>-<workload>-<environment>-<location>-<instance_number>`. Empty segments are dropped, and the separator is omitted entirely for resource types that disallow hyphens (e.g. storage accounts)."
}
