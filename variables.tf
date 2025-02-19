variable "application" {
  description = "The primary application or service identifier."
  type        = string
  default     = ""
}

variable "business_unit" {
  description = "The business unit or domain."
  type        = string
  default     = ""
}

variable "environment" {
  description = "The environment identifier (e.g. dev, prod)."
  type        = string
  default     = ""
}

variable "location" {
  description = "The Azure region or location."
  type        = string
  default     = ""
}

variable "resource_type" {
  description = "The resource type (mandatory)."
  type        = string
}

variable "workload" {
  description = "The workload or specific role (optional)."
  type        = string
  default     = ""
}

variable "instance_number" {
  description = "The instance number (optional)."
  type        = string
  default     = ""
}
