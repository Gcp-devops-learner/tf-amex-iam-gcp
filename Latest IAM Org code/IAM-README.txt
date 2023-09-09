# Google IAM Terraform Module

## Module Features

A Terraform base module for creating a `google_iam_custom_role` resources that allows management of a customized Cloud IAM role.

## Getting Started

Most basic usage just setting required arguments:

```hcl
module "terraform-google-iam-custom-role" {
  source = "terraform-google-modules/iam/google//modules/custom_role_iam"
  
  target_level = "org/project level"
  target_id    = "org/project id"
  role_id      = "myCustomRole"
  title        = "My Custom Role"
  description  = "A description"
  permissions  = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
  members      = []
}
```

## Terraform Service Accounts Module

This module allows easy creation of one or more service accounts, and granting them basic roles.

The resources/services/activations/deletions that this module will create/trigger are:

Basic usage of this module is as follows:

```hcl
module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = "<PROJECT ID>"
  prefix        = "test-sa"
  names         = ["first", "second"]
  project_roles = [
    "project-foo=>roles/viewer",
    "project-spam=>roles/storage.objectViewer",
  ]
}
```

## Module Configuration

- [**`module_depends_on`**](#var-module_depends_on): *(Optional `list(dependency)`)*<a name="var-module_depends_on"></a>

  A list of dependencies. Any object can be _assigned_ to this list to define a hidden external dependency.

  Example:

  ```hcl
  module_depends_on = [
    google_network.network
  ]
  ```
  
## Purpose and Resources provisioned


The purpose of this step is to create the following resources 

## CFT Module versions for Project

| Name | version | 
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.1 

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html)  0.15.0
- **Previous module**
   - Ensure that the boostrap module is provisioned before trying to provision this module.
- **Service account**
	- use the service account "<service account name>"@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 


## Steps for provisioning the resources using this code

1. Change into IAM folder
2. Run `terraform init`
3. Run `terraform plan -var-file=input.tfvars` and review output
4. Run `terraform apply -var-file=input.tfvars`
  
## Main Resource Configuration

- [**`role_id`**](#var-role_id): *(**Required** `string`)*<a name="var-role_id"></a>

  The camelCaseRoleId to use for this role. Cannot contain `-` characters.

- [**`title`**](#var-title): *(**Required** `string`)*<a name="var-title"></a>

  A human-readable title for the role.

- [**`permissions`**](#var-permissions): *(**Required** `set(string)`)*<a name="var-permissions"></a>

  The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  
- [**`members`**](#var-members): *(Optional `set(string)`)*<a name="var-members"></a>

  Identities that will be granted the privilege in role. Each entry can have one of the following values:
  - `user:{emailid}`: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  - `serviceAccount:{emailid}`: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  - `group:{emailid}`: An email address that represents a Google group. For example, admins@example.com.
  - `domain:{domain}`: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.

  Default is `[]`.

- [**`description`**](#var-description): *(Optional `string`)*<a name="var-description"></a>

  A human-readable description for the role.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bindings | Map of role (key) and list of members (value) to add the IAM policies/bindings | `map(list(string))` | `{}` | no |
| mode | Mode for adding the IAM policies/bindings, additive and authoritative | `string` | `"additive"` | no |
| description | A human-readable description for the role. | `string` | `"Managed by Terraform"` | no |
| organizations | Organizations list to add the IAM policies/bindings | `list(string)` | `[]` | no |
| org\_id | Id of the organization for org-level roles. | `string` | `""` | yes |
| prefix | Prefix applied to service account names. | `string` | `""` | no |
| project\_id | Project id where service account will be created. | `string` | n/a | yes |
| project\_roles | Common roles to apply to all service accounts, project=>role as elements. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| members | Members which were bound to organizations. |
| organizations | Organizations which received bindings. |
| roles | Roles which were assigned to members. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->