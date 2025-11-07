terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "amazon-connect-terraform-states"
    key            = "eu-central-1/connect/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}
