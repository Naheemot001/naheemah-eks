terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "myajay-terraform-state"
    region = "ca-central-1"
    key    = "myajay-eks/terraform.tfstate"
  }

}



provider "aws" {
  region = "ca-central-1"
  default_tags {
    tags = {
      BillingID = "Myajay-Team"
      Project   = "Non-Prod-Cluster"
      terraform = true
    }
  }
}