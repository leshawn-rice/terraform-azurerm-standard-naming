variable "resource_type" {
  description = "(Required) The resource type."
  type        = string
}

variable "business_unit" {
  description = "(Optional) The business unit or domain."
  type        = string
  default     = ""
}

variable "application" {
  description = "(Optional) The primary application or service identifier."
  type        = string
  default     = ""
}

variable "workload" {
  description = "(Optional) The workload or specific role."
  type        = string
  default     = ""
}

variable "environment" {
  description = "(Optional) The environment identifier (e.g. dev, prod)."
  type        = string
  default     = ""
}

variable "location" {
  description = "(Optional) The Azure region or location."
  type        = string
  default     = ""
}

variable "instance_number" {
  description = "(Optional) The instance number."
  type        = string
  default     = ""
}
