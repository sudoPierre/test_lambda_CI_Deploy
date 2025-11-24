terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.22.1"
    }
  }
  backend "s3" {
    bucket = "test-terraform-backend-pierre"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "terraform-vscode"
}
