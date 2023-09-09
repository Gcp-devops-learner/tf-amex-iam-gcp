
backend .tf
terraform {
  required_version = "~> 0.15.0"
  backend "gcs" {
    bucket = "amex-tf-state"
    prefix = "terraform/state/0.15/IAM"
  }
}



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

variable "cloud-security-admin-permissions" {
  type        = list(string)
  description = "cloud-security-admin-permissions"
}

variable "iam-admin-permissions" {
  type        = list(string)
  description = "iam-admin-permissions"
}

variable "network-security-eng-admin-permissions" {
  type        = list(string)
  description = "network-security-eng-admin-permissions"
}

variable "siem-admin-permissions" {
  type        = list(string)
  description = "siem-admin-permissions"
}

variable "ir-admin-permissions" {
  type        = list(string)
  description = "ir-admin-permissions"
}

variable "crypto-admin-permissions" {
  type        = list(string)
  description = "crypto-admin-permissions"
}

variable "ddi-admin-permissions" {
  type        = list(string)
  description = "ddi-admin-permissions"
}

variable "billing-admin-permissions" {
  type        = list(string)
  description = "billing-admin-permissions"
}

variable "network-admin-permissions" {
  type        = list(string)
  description = "network-admin-permissions"
}


variable "cloudsolutions-poweruser-permissions" {
  type        = list(string)
  description = "cloudsolutions-poweruser-permissions"
}

variable "cloudqe-poweruser-permissions" {
  type        = list(string)
  description = "cloudqe-poweruser-permissions"
}

