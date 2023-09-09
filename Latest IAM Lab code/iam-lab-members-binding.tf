/*####################################
  Custom Role Cloud Security Admin
*/ ####################################


module "cloud-security-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_security_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-CloudSec@amex.com"]
  
}

/*######################
  Custom Role IAM Admin
*/ ######################


module "iam-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  project_id    = var.project_id
  role_id      = "org_iam_admin"
  members      = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-IAM@amex.com"]
  
}

/*#######################################
  Custom Role Network Security Eng Admin
*/ #######################################


module "network-security-eng-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  project_id    = var.project_id
  role_id      = "org_netsec_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-NetSec@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCPNetSecOps@amex.com"]
}

/*########################
  Custom Role SIEM Admin
*/ ########################

module "siem-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_siem_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-SIEM@amex.com"]
}

/*#####################
  Custom Role IR Admin
*/ #####################

module "ir-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_ir_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCPInfosecMonitoring@amex.com"]
}

/*##########################
  Custom Role Crypto Admin
*/ ##########################

module "crypto-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_crypto_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Crypto@amex.com"]
}

/*########################
  Custom Role DDI Admin
*/ ########################


module "ddi-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_ddi_admin"
  members     = ["group:PRC-AXP-AA-E3-AppAdmin-GCP-DDI@amex.com"]
}


/*##########################
  Custom Role Billing Admin
*/ ##########################

module "billing-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_billing_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Billing@amex.com"]
}

/*###########################
  Custom Role Network Admin
*/ ###########################

module "network-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "project"
  project_id    = var.project_id
  role_id      = "org_network_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-DCE@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCP-GNOC@amex.com"]
}

/*####################################
  Custom Role CloudSoultions Poweruser
*/ ####################################

module "cloudsolutions-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_solutions_pu"
  members     = ["group:PRC-AXP-PU-E3-AppAdmin-GCP-Dev-Eng@amex.com"]
}

/*###############################
  Custom Role CloudQE Poweruser
*/ ###############################

module "cloudqe-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_quality_pu"
  members     = ["group:PRC-AXP-PU-E3-AppAdmin-GCP-TEST-Eng@amex.com"]
}









