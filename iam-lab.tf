/*####################################
  Custom Role Cloud Security Admin
*/####################################

module "cloud-security-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_security_admin"
  title                = "cloud security admin"
  description          = "cloud security admin user custom role"
  base_roles           = ["roles/resourcemanager.organizationViewer", "roles/orgpolicy.policyAdmin", "roles/iam.securityReviewer", "roles/securitycenter.admin", "roles/logging.privateLogViewer", "roles/logging.configWriter", "roles/container.viewer", "roles/compute.viewer", "roles/bigquery.metadataViewer"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-CloudSec@amex.com"]
  permissions          = []
}

/*######################
  Custom Role IAM Admin
*/######################

module "iam-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_iam_admin"
  title                = "iam admin"
  description          = "iam admin user custom role"
  base_roles           = ["roles/iam.organizationRoleAdmin", "roles/resourcemanager.folderIamAdmin", "roles/iam.workloadIdentityPoolAdmin", "roles/iam.securityAdmin"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-IAM@amex.com"]
  permissions          = []
}

/*#######################################
  Custom Role Network Security Eng Admin
*/#######################################

module "network-security-eng-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_netsec_admin"
  title                = "network security eng admin"
  description          = "network security eng admin user custom role"
  base_roles           = ["roles/compute.securityAdmin", "roles/accesscontextmanager.policyAdmin"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-NetSec@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCPNetSecOps@amex.com"]
  permissions          = []
}

/*########################
  Custom Role SIEM Admin
*/########################

module "siem-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_siem_admin"
  title                = "siem admin"
  description          = "siem admin custom role"
  base_roles           = ["roles/logging.viewer", "roles/monitoring.viewer"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-SIEM@amex.com"]
  permissions          = []
}

/*#####################
  Custom Role IR Admin
*/#####################

module "ir-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_ir_admin"
  title                = "ir admin"
  description          = "ir admin custom role"
  base_roles           = ["roles/resourcemanager.organizationViewer", "roles/securitycenter.adminViewer"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCPInfosecMonitoring@amex.com"]
  permissions          = []
}

/*##########################
  Custom Role Crypto Admin
*/##########################

module "crypto-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_crypto_admin"
  title                = "crypto admin"
  description          = "crypto custom role"
  base_roles           = ["roles/cloudkms.admin"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Crypto@amex.com"]
  permissions          = []
}

/*########################
  Custom Role DDI Admin
*/########################

module "ddi-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_ddi_admin"
  title                = "ddi admin"
  description          = "ddi admin custom role"
  base_roles           = ["roles/dns.admin"]
  members              = ["group:PRC-AXP-AA-E3-AppAdmin-GCP-DDI@amex.com"]
  permissions          = []
}

/*##########################
  Custom Role Billing Admin
*/##########################

module "billing-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_billing_admin"
  title                = "billing admin"
  description          = "billing admin custom role"
  base_roles           = ["roles/billing.admin", "roles/billing.creator", "roles/resourcemanager.organizationViewer"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Billing@amex.com"]
  permissions          = []
}

/*###########################
  Custom Role Network Admin
*/###########################

module "network-admin" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_network_admin"
  title                = "network admin"
  description          = "network admin custom role"
  base_roles           = ["roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/resourcemanager.folderViewer", "roles/owner"]
  members              = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-DCE@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCP-GNOC@amex.com"]
  permissions          = []
}

/*####################################
  Custom Role CloudSoultions Poweruser
*/####################################

module "cloudsolutions-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_solutions_pu"
  title                = "cloudsolutions poweruser"
  description          = "cloudsolutions poweruser custom role"
  base_roles           = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  members              = ["group:PRC-AXP-PU-E3-AppAdmin-GCP-Dev-Eng@amex.com"]
  permissions          = []
}

/*###############################
  Custom Role CloudQE Poweruser
*/###############################

module "cloudqe-poweruser" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"

  target_level         = "project"
  target_id            = var.poc_project_id
  role_id              = "org_quality_pu"
  title                = "cloudqe-poweruser"
  description          = "cloudqe-poweruser custom role"
  base_roles           = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  members              = ["group:PRC-AXP-PU-E3-AppAdmin-GCP-TEST-Eng@amex.com"] 
  permissions          = []
}









