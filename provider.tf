terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "chairaja0610-tfstate-bucket-2026" # Same bucket name as above
    key            = "ec2-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
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
    region = var.aws_region
}