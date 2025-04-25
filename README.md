# Managing infrastructure as code with Terraform, Cloud Build 

This is the repo for the [Managing infrastructure as code with Terraform, Cloud Build, and GitOps]
## Configuring your **dev** environment

Just for demostration, this step will:
 1. Configure an apache2 http server on network '**dev**' and subnet '**dev**-subnet-01'
 2. Open port 80 on firewall for this http server 

```bash
cd ../environments/dev
terraform init
terraform plan
terraform apply
terraform destroy
```
