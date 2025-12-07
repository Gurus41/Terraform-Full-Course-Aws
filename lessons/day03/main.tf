terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "dev_bucket" {
  bucket = "dev-terraform-bucket-gurusai"

  tags = {
    Name        = "Dev Terraform Bucket"
    Environment = "Dev"
  }
}