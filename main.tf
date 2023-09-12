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
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_iam_user" "lb" {
  name = "fromterraform"

  tags = {
    tag-key = "fromterraform"
  }
}

