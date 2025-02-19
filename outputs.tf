output "is_name_valid" {
  value       = true
  description = "Boolean indicating whether the name is valid. Will throw an error if the name is not valid."

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
  description = "The final generated resource name."
}
