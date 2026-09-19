variable "resource_type" {
  description = "(Required) The Azure resource type to generate a name for. Accepts a friendly name (`virtual machine`, `virtualmachine`) or the abbreviation itself (`vm`); matching is case-insensitive and surrounding whitespace is trimmed. See the [Supported resource types](https://github.com/leshawn-rice/terraform-azurerm-standard-naming/blob/main/docs/resource-types.md) reference. An unrecognised value is used verbatim (lowercased) as the name prefix."
  type        = string
}

variable "business_unit" {
  description = "(Optional) The business unit or domain that owns the resource (e.g. `it`, `fin`). Lowercased before use; omitted from the name when empty."
  type        = string
  default     = ""
}

variable "application" {
  description = "(Optional) The primary application or service identifier (e.g. `tf`, `payments`). Lowercased before use; omitted from the name when empty."
  type        = string
  default     = ""
}

variable "workload" {
  description = "(Optional) The workload or specific role the resource fills (e.g. `test`, `api`). Lowercased before use; omitted from the name when empty."
  type        = string
  default     = ""
}

variable "environment" {
  description = "(Optional) The environment identifier (e.g. `dev`, `prod`). Lowercased before use; omitted from the name when empty."
  type        = string
  default     = ""
}

variable "location" {
  description = "(Optional) The Azure region. Accepts either form of the region name (`westus` or `west us`) and is replaced with its abbreviation (`wus`). An unrecognised region is used verbatim (lowercased). Omitted from the name when empty, and for resource types that are not region-specific."
  type        = string
  default     = ""
}

variable "instance_number" {
  description = "(Optional) The instance number, zero-padded to three digits in the final name (`1` becomes `001`). Must be parseable as a number. Omitted from the name when empty, and for resource types that are not instanced."
  type        = string
  default     = ""
}
