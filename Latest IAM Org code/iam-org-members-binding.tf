/*####################################
  Custom Role Cloud Security Poweruser
*/ ####################################

module "cloud-security-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_security_poweruser"
 # members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-CloudSec@amex.com"]
}

/*##################################
  Custom Role Infosec Audit
*/ ##################################


module "infosec-audit-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_infosecaudit_viewer"
  members     = ["group:PRC-AXP-AAE3-Compl-SecGCPInfosecAudit@amex.com"]
  
}

/*##################################
  Custom Role IAM Poweruser
*/ ##################################


module "iam-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_iam_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-IAM@amex.com"]
 
}

/*##########################################
  Custom Role Network Security Eng poweruser
*/ ##########################################

module "network-security-eng-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_netsec_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-NetSec@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCPNetSecOps@amex.com"]

}


/*##################################
  Custom Role SIEM Poweruser
*/ ##################################


module "siem-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_siem_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-SIEM@amex.com"]

}

/*##################################
  Custom Role IR Poweruser
*/ ##################################


module "ir-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_ir_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCPInfosecMonitoring@amex.com"]
  
}

/*##################################
  Custom Role DDI poweruser
*/ ##################################

module "ddi-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_ddi_poweruser"
  members     = ["group:PRC-AXP-AA-E3-AppAdmin-GCP-DDI@amex.com"]
 
}

/*##################################
  Custom Role Billing Poweruser
*/ ##################################


module "billing-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_billing_viewer"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Billing@amex.com"]
}

/*##################################
  Custom Role Network Poweruser
*/ ##################################

module "network-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_network_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-DCE@amex.com", "group:PRC-AXP-BA-E3-AppAdmin-GCP-GNOC@amex.com"]
  
}

/*##################################
  Custom Role Product Poweruser
*/ ##################################


module "product-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_product_pu"
  members     = ["group:PRC-AXP-PU-E3-AppSupp-GCP-CE-Product@amex.com"]

}

/*##################################
  Custom Role Crypto Poweruser
*/ ##################################

module "crypto-poweruser-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_crypto_poweruser"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-Crypto@amex.com"]
}

/*##################################
  Custom Role CloudEng Admin
*/ ##################################


module "cloudeng-admin-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_corefoundation_admin"
  members     = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-CF@amex.com"]
  
}

/*##################################
  Custom Role CloudEng Poweruser
*/ ##################################

module "cloudeng-powersuer-binding" {
  source = "../../../modules/iam/iam-member-binding"

  target_level = "org"
  org_id    = var.org_id
  role_id      = "org_corefoundation_poweruser"
  members      = ["group:PRC-AXP-BA-E3-AppAdmin-GCP-CF@amex.com"]
  
}









