# default provider(tokyo)
provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket = "awsstudytest"
    key    = "awsstudytest"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}