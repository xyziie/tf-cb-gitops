
locals {
  env = "prod"
}

provider "google" {
  project = "${var.project}"
}

module "vpc" {
  source  = "../../modules/vpc"
  project = "${var.project}"
  env     = "${local.env}"
}

module "gce_instance" {
  source  = "../../modules/gce_instance"
  project = "${var.project}"
  subnet  = "${module.vpc.subnet}"
}

module "firewall" {
  source  = "../../modules/firewall"
  project = "${var.project}"
  subnet  = "${module.vpc.subnet}"
}

module "gcs" {
  source  = "../../modules/gcs"
  project = "${var.project}"
  subnet  = "${module.vpc.subnet}"
}