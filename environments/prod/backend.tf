
terraform {
  backend "gcs" {
    bucket = "de-achyut-sharma-tfstate"
    prefix = "env/prod"
  }
}
