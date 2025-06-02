# tfstare管理バケット
terraform {
  required_version = "=1.11.3"
  backend "s3" {
    bucket = "aws-study-test-01"
    key    = "aws-study-test-01"
    region = "ap-northeast-1"
  }
}

# プロバイダ-指定
provider "aws" {
  region = "ap-northeast-1"
}