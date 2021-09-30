terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.60.0"
    }
  }
}

provider "aws" {
  profile = "152992350355_AWSAdministratorAccess"
  region  = "us-west-2"
}
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket789424"
  acl    = "private"

  versioning = {
    enabled = true
  }

}


