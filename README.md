# Managing infrastructure as code with Terraform, Cloud Build 

This is the repo for the [Managing infrastructure as code with Terraform, Cloud Build, and GitOps](https://cloud.google.com/docs/terraform/resource-management/managing-infrastructure-as-code?hl=en)

<strong>2 Points:</strong>

* Remote backend bucket needs to be created manually.Check if subfolders like dev/prod inside the bucket gets created automatically as they store separate .tfstate files(Based on backend.yaml)
* You will need to create a Cloudbuild trigger > *. (Any branch) > Authenticate with Repository
* Clone the `dev` branch to the `CloudShell Editor`
* In `environments` > `dev` & `prod` > `terraform.tfvars` (Update Project-ID)
* No need to run `terraform init` as it is already part of `cloudbuild.yaml` steps. #line 13
* Commit the code from the `dev branch`.
* Go through the documentation above
