# # プロバイダ-指定
# provider "aws" {
#   region     = "ap-northeast-1"
# }

# VPC作成 -------------------------------------------
resource "aws_vpc" "test_vpc" {
  # IPv4 CidrBlock
  cidr_block = "10.1.0.0/16"
  # DNS ホスト名を有効化
  enable_dns_hostnames = true
  # DNS 解決を有効化
  enable_dns_support = true
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test_vpc"
  }
}


# Internet Gateway作成 -------------------------------------------
resource "aws_internet_gateway" "test_igw" {
  # internet Gatewayを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id


  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test_igw"
  }
}
