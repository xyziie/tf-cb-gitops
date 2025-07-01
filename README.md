# Managing infrastructure as code with Terraform, Cloud Build 

This is the repo for the [Managing infrastructure as code with Terraform, Cloud Build, and GitOps](https://cloud.google.com/docs/terraform/resource-management/managing-infrastructure-as-code?hl=en)

<strong>2 Points:</strong>

* Remote backend bucket needs to be created manually.
* You will need to create a Cloudbuild trigger > *. (Any branch) > Authenticate with Repository
* Clone the `dev` branch to the `CloudShell Editor` > git checkout dev > git pull
* In `environments` > `dev` & `prod` > `terraform.tfvars` (Update Project-ID)
* No need to run `terraform init` as it is already part of `cloudbuild.yaml` steps. #line 13
* Commit the code from the `dev branch`.
* Under `modules` > check `main.tf` for the VPC subnet region
* To protect the `dev` & `prod` [branches](https://cloud.google.com/docs/terraform/resource-management/managing-infrastructure-as-code?hl=en#enforcing_cloud_build_execution_success_before_merging_branches). You will need to setup it for new branches on GIT, for this set of branches it is done.
* Check if subfolders like dev/prod inside the bucket gets created automatically as they store separate .tfstate files(Based on backend.yaml)
* Go through the documentation above

* QQ - What will happen if in CB - trigger step , I use `dev` branch instad of `*. (Any branch)` ??
