# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.
variable "org_id" {
  type        = string
  description = "Variable for project or organization ID."
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

variable "role_id" {
  type        = string
  description = "ID of the Custom Role."
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

variable "permissions" {
  type        = list(string)
  description = "IAM permissions assigned to Custom Role."
}