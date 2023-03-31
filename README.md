# Terraform Cloud Getting Started Guide Example

This is an example Terraform configuration intended for use with the [Terraform Cloud Getting Started Guide](https://learn.hashicorp.com/terraform/cloud-gettingstarted/tfc_overview).

## What will this do?

This is a Terraform configuration that will create an EC2 instance in your AWS account. 

When you set up a Workspace on Terraform Cloud, you can link to this repository. Terraform Cloud can then run `terraform plan` and `terraform apply` automatically when changes are pushed. For more information on how Terraform Cloud interacts with Version Control Systems, see [our VCS documentation](https://www.terraform.io/docs/cloud/run/ui.html).

## What are the prerequisites?

You must have a GCP account and provide your Project ID and your service account to Terraform Cloud. 

To apply the configuration:
```console
$ terraform init

$ terraform apply -var-file=test.tfvars
```

To cleanup:
```console
$ terraform destroy -var-file=test.tfvars
```