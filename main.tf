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

resource "aws_iam_user" "lb" {
  name = "fromterraform"

  tags = {
    tag-key = "fromterraform"
  }
}

