
terraform {
  backend "gcs" {
    bucket = "qwiklabs-gcp-03-1b3e99931cdc-tfstate"
    prefix = "env/prod"
  }
}
