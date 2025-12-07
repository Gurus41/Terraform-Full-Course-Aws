terraform {
  backend "s3" {
    bucket = "dev-tf-bucket-gurusai-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

}
# Configure the AWS Provider
provider "aws" {
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