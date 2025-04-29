
terraform {
  backend "gcs" {
    bucket = "de-achyut-sharma-tfstate1"
    prefix = "env/dev"
  }
}
