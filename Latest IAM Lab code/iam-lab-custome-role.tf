/*####################################
  Custom Role Cloud Security Admin
*/ ####################################


module "cloud-security-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id       = var.project_id
  role_id      = "org_security_admin"
  title        = "cloud security admin"
  description  = "cloud security admin user custom role"
  # base_roles           = ["roles/resourcemanager.organizationViewer", "roles/orgpolicy.policyAdmin", "roles/iam.securityReviewer", "roles/securitycenter.admin", "roles/logging.privateLogViewer", "roles/logging.configWriter", "roles/container.viewer", "roles/compute.viewer", "roles/bigquery.metadataViewer"]
  permissions = var.cloud-security-admin-permissions
}

/*######################
  Custom Role IAM Admin
*/ ######################


module "iam-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_iam_admin"
  title        = "iam admin"
  description  = "iam admin user custom role"
  # base_roles           = ["roles/iam.organizationRoleAdmin", "roles/resourcemanager.folderIamAdmin", "roles/iam.workloadIdentityPoolAdmin", "roles/iam.securityAdmin"]
  permissions = var.iam-admin-permissions
}

/*#######################################
  Custom Role Network Security Eng Admin
*/ #######################################


module "network-security-eng-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_netsec_admin"
  title        = "network security eng admin"
  description  = "network security eng admin user custom role"
  # base_roles           = ["roles/compute.securityAdmin", "roles/accesscontextmanager.policyAdmin"]
  permissions = var.network-security-eng-admin-permissions
}

/*########################
  Custom Role SIEM Admin
*/ ########################

module "siem-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_siem_admin"
  title        = "siem admin"
  description  = "siem admin custom role"
  # base_roles           = ["roles/logging.viewer", "roles/monitoring.viewer"]
  permissions = var.siem-admin-permissions
}


/*#####################
  Custom Role IR Admin
*/ #####################

module "ir-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_ir_admin"
  title        = "ir admin"
  description  = "ir admin custom role"
  # base_roles           = ["roles/resourcemanager.organizationViewer", "roles/securitycenter.adminViewer"]
  permissions = var.ir-admin-permissions
}

/*##########################
  Custom Role Crypto Admin
*/ ##########################

module "crypto-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_crypto_admin"
  title        = "crypto admin"
  description  = "crypto custom role"
  # base_roles           = ["roles/cloudkms.admin"]
  permissions = var.crypto-admin-permissions
}

/*########################
  Custom Role DDI Admin
*/ ########################


module "ddi-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_ddi_admin"
  title        = "ddi admin"
  description  = "ddi admin custom role"
  # base_roles           = ["roles/dns.admin"]
  permissions = var.ddi-admin-permissions
}


/*##########################
  Custom Role Billing Admin
*/ ##########################

module "billing-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_billing_admin"
  title        = "billing admin"
  description  = "billing admin custom role"
  #  base_roles           = ["roles/billing.admin", "roles/billing.creator", "roles/resourcemanager.organizationViewer"]
  permissions = var.billing-admin-permissions
}


/*###########################
  Custom Role Network Admin
*/ ###########################

module "network-admin-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_network_admin"
  title        = "network admin"
  description  = "network admin custom role"
  # base_roles           = ["roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/resourcemanager.folderViewer", "roles/owner"]
  permissions = var.network-admin-permissions
}

/*####################################
  Custom Role CloudSoultions Poweruser
*/ ####################################



module "cloudsolutions-poweruser-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_solutions_pu"
  title        = "cloudsolutions poweruser"
  description  = "cloudsolutions poweruser custom role"
  # base_roles           = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  permissions = var.cloudsolutions-poweruser-permissions
}

/*###############################
  Custom Role CloudQE Poweruser
*/ ###############################

module "cloudqe-poweruser-lab" {
  source = "../../../modules/iam/iam-custom-role"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_quality_pu"
  title        = "cloudqe-poweruser"
  description  = "cloudqe-poweruser custom role"
  # base_roles           = ["roles/resourcemanager.projectCreator", "roles/compute.networkUser", "roles/bigquery.dataOwner", "roles/bigquery.user", "roles/dataproc.admin", "roles/storage.admin", "roles/logging.logWriter", "roles/logging.privateLogViewer"]
  permissions = var.cloudqe-poweruser-permissions
}









