terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.53.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-065145143208"
    key = "igti/mod1/terrafom.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}

