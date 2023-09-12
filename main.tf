terraform {
  cloud {
    organization = "tutorial_terraform"

    workspaces {
      name = "terraform_tutorial"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "users" {
  name = "tftester"

  tags = {
    user = "iamuserfromtf"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket09122023"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

