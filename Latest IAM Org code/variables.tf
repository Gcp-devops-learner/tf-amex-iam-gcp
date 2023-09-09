# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "org_id" {
  description = "Name of the target id"
  type        = string
  default = ""
}

variable "project_id" {
  type        = string
  description = "Variable for project or organization ID."
  default = ""
}

variable "folder_id" {
  type        = string
  description = "Variable for project or organization ID."
  default = ""
}

variable "target_level" {
  type        = string
  description = "String variable to denote if custom role being created is at project or organization level."
  default     = "project"
}
variable "title" {
  type        = string
  description = "Human-readable title of the Custom Role, defaults to role_id."
  default     = ""
}

variable "description" {
  type        = string
  description = "Description of Custom role."
  default     = ""
}

variable "cloud-security-poweruser-permissions" {
  type = list(string)
}

variable "org_infosecaudit_viewer_permissions" {
  description = "List Of Permissions for org_infosecaudit_viewer_permissions "
  type        = list(string)
}

variable "iam-poweruser-permissions" {
  description = "List Of Permissions for iam-poweruser-permission"
  type        = list(string)
}

variable "network-security-eng-poweruser-permissions" {
  description = "List Of Permissions for network-security-eng-poweruser-permissions"
  type        = list(string)
}

variable "siem-poweruser-permissions" {
  description = "List Of Permissions for siem-poweruser-permissions"
  type        = list(string)
}

variable "ir-poweruser-permissions" {
  description = "List Of Permissions for ir-poweruser-permissions"
  type        = list(string)
}

variable "ddi-poweruser-permissions" {
  description = "List Of Permissions for ddi-poweruser-permissions "
  type        = list(string)
}

variable "billing-poweruser-permissions" {
  description = "List Of Permissions for billing-poweruser"
  type        = list(string)
}

variable "network-poweruser-permissions" {
  description = "List Of Permissions for network-poweruser"
  type        = list(string)
}

variable "product-poweruser-permissions" {
  description = "List Of Permissions for product-poweruser "
  type        = list(string)
}

variable "crypto-poweruser-permissions" {
  description = "List Of Permissions for crypto-poweruser"
  type        = list(string)
}

variable "cloudeng-admin-permissions" {
  description = "List Of Permissions for cloudeng-admin"
  type        = list(string)
}

variable "cloudeng-powersuer-permissions" {
  description = "List Of Permissions for cloudeng-powersuer"
  type        = list(string)
}