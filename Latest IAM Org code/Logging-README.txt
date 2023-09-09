# Purpose and Resources provisioned
The purpose of this step is to create the following resources
- Logging project 

## CFT Module versions

| Name | version |
|------|:-------------:|
| terraform-google-modules/project-factory/google | ~> 10.3 |

## Prerequisites
- **Software**
   - [Terraform](https://www.terraform.io/downloads.html) >= 0.15.0
- **Previous module**
   - Ensure that the boostrap module is provisioned before trying to provision this module.
   - Also ensure that 2.1-security-project module is provisioned before trying to provision this module.
- **Service account**
	- use the service account sa-geo-logging@project_id.iam.gserviceaccount.com that was created during the provisioning of the booststrap.
- **Permissions**
	- The service account mentioned to be used for this provisioning has already assigned these permissions in the preceeding deployments. 

## Steps for provisioning the resources using this code

1. Change into 4-logging folder
2. Copy tfvars by running `cp terraform.example.tfvars terraform.tfvars` and update `terraform.tfvars` with values from your environment.
3. Run `terraform init`
4. Run `terraform plan` and review output
5. Run `terraform apply`

# Log Export: Storage destination submodule

This submodule allows you to configure a Google Cloud Storage bucket destination that
can be used by the log export created in the root module.

## Usage

The [examples](../../examples) directory contains directories for each destination, and within each destination directory are directories for each parent resource level. Consider the following
example that will configure a storage bucket destination and a log export at the project level:

```hcl
module "log_export" {
  source                 = "terraform-google-modules/log-export/google"
  destination_uri        = "${module.destination.destination_uri}"
  filter                 = "severity >= ERROR"
  log_sink_name          = "storage_example_logsink"
  parent_resource_id     = "sample-project"
  parent_resource_type   = "project"
  unique_writer_identity = true
}

module "destination" {
  source                   = "terraform-google-modules/log-export/google//modules/storage"
  project_id               = "sample-project"
  storage_bucket_name      = "sample_storage_bucket"
  log_sink_writer_identity = "${module.log_export.writer_identity}"
}
```

At first glance that example seems like a circular dependency as each module declaration is
using an output from the other, however Terraform is able to collect and order all the resources
so that all dependencies are met.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| expiration\_days | Object expiration time. If unset logs will never be deleted. | `number` | `null` | no |
| force\_destroy | When deleting a bucket, this boolean option will delete all contained objects. | `bool` | `false` | no |
| location | The location of the storage bucket. | `string` | `"US"` | no |
| log\_sink\_writer\_identity | The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module). | `string` | n/a | yes |
| project\_id | The ID of the project in which the storage bucket will be created. | `string` | n/a | yes |
| retention\_policy | Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. | <pre>object({<br>    is_locked             = bool<br>    retention_period_days = number<br>  })</pre> | `null` | no |
| storage\_bucket\_name | The name of the storage bucket to be created and used for log entries matching the filter. | `string` | n/a | yes |
| storage\_class | The storage class of the storage bucket. | `string` | `"STANDARD"` | no |
| uniform\_bucket\_level\_access | Enables Uniform bucket-level access to a bucket. | `bool` | `true` | no |
| versioning | Toggles bucket versioning, ability to retain a non-current object version when the live object version gets replaced or deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| console\_link | The console link to the destination storage bucket |
| destination\_uri | The destination URI for the storage bucket. |
| project | The project in which the storage bucket was created. |
| resource\_id | The resource id for the destination storage bucket |
| resource\_name | The resource name for the destination storage bucket |
| self\_link | The self\_link URI for the destination storage bucket |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->