terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Adjust to your preferred version
    }
  }

  backend "s3" {
    bucket = "aws-bucket-w20"
    key    = "terraform/state/terraform.tfstate"
    region = "us-east-1"  
    # Optional: If you use DynamoDB for state locking
    # dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"  
}