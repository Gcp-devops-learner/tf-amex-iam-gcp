# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


/******************************************
  Custom_role to member org level
 *****************************************/
resource "google_organization_iam_member" "custom_role_member" {

  for_each = var.target_level == "org" ? toset(var.members) : []
  org_id   = var.org_id
  role     = "organizations/${var.org_id}/roles/${var.role_id}"
  member   = each.key
}


/******************************************
  Custom_role to member project level
 *****************************************/
resource "google_project_iam_member" "custom_role_member" {

  for_each = var.target_level == "project" ? toset(var.members) : []
  project  = var.project_id
  role     = "project/${var.project_id}/roles/${var.role_id}"
  member   = each.key
}


/******************************************
  Custom_role to member folder level
 *****************************************/
resource "google_folder_iam_member" "custom_role_member" {

  for_each = var.target_level == "folder" ? toset(var.members) : []
  folder  = var.folder_id
  role     = "projects/${var.folder_id}/roles/${var.role_id}"
  member   = each.key
}