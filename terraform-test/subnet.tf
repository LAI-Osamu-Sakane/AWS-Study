
# Subnet作成 -------------------------------------------
# 1つ目のパブリックサブネット
resource "aws_subnet" "public_1a" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1a"
  # パブリックIPを使用できるようにするためtrue
  # map_public_ip_on_launch = true
  # IPv4 CIDR ブロック
  cidr_block = "10.1.1.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test-public-1a"
  }
}

# 2つ目のパブリックサブネット
resource "aws_subnet" "public_1c" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1c"
  # パブリックIPを使用できるようにするためtrue
  # map_public_ip_on_launch = true
  # IPv4 CIDR ブロック
  cidr_block = "10.1.2.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test-public-1c"
  }
}

# 1つ目のプライベートサブネット
resource "aws_subnet" "private_1a" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1a"
  # パブリックIPを使用できるようにするためtrue
  map_public_ip_on_launch = false
  # IPv4 CIDR ブロック
  cidr_block = "10.1.3.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test-private-1a"
  }
}

# 2つ目のプライベートサブネット
resource "aws_subnet" "private_1c" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1c"
  # パブリックIPを使用できるようにするためtrue
  map_public_ip_on_launch = false
  # IPv4 CIDR ブロック
  cidr_block = "10.1.4.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_test-private-1c"
  }
}

# RDS用
# 1つ目のプライベートサブネット
resource "aws_subnet" "rds_prv_1a" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1a"
  # パブリックIPを使用できるようにするためtrue
  map_public_ip_on_launch = false
  # IPv4 CIDR ブロック
  cidr_block = "10.1.10.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_rds_prv-1a"
  }
}

# 2つ目のプライベートサブネット
resource "aws_subnet" "rds_prv_1c" {
  # Subnetを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # Subnetを設置するAZ
  availability_zone = "ap-northeast-1c"
  # パブリックIPを使用できるようにするためtrue
  map_public_ip_on_launch = false
  # IPv4 CIDR ブロック
  cidr_block = "10.1.11.0/24"
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws_study_rds_prv-1c"
  }
}
