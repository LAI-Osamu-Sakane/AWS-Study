# Security Group作成 -------------------------------------------
# ec2用のセキュリティグループ
resource "aws_security_group" "sg-ec2" {
  # 作成するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # 説明
  description = "EC2"
  # Security Group名
  name = "aws-study-test-sg-ec2"


  tags = {
    Name = "aws-study-test-sg-ec2"
  }
}


# ingress rule（インバウンドルール）作成 -------------------------------------------
# HTTPの許可
resource "aws_vpc_security_group_ingress_rule" "allow-http" {
  # ポート番号指定
  from_port = 80
  to_port   = 80
  # プロトコル指定
  ip_protocol = "tcp"
  # VPCのCidrBlock
  cidr_ipv4 = aws_vpc.test_vpc.cidr_block
  # Security GroupのID指定
  security_group_id = aws_security_group.sg-ec2.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-http"
  }
}


#HTTPSの許可
resource "aws_vpc_security_group_ingress_rule" "allow-https" {
  # ポート番号指定
  from_port = 443
  to_port   = 443
  # プロトコル指定
  ip_protocol = "tcp"
  # VPCのCidrBlock
  cidr_ipv4 = aws_vpc.test_vpc.cidr_block
  # Security GroupのID指定
  security_group_id = aws_security_group.sg-ec2.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-https"
  }
}


#SSHの許可
resource "aws_vpc_security_group_ingress_rule" "allow-ssh" {

  # ポート番号指定
  from_port = 22
  to_port   = 22
  # プロトコル指定
  ip_protocol = "tcp"
  # VPCのCidrBlock
  cidr_ipv4 = aws_vpc.test_vpc.cidr_block
  # Security GroupのID指定
  security_group_id = aws_security_group.sg-ec2.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-SSH"
  }
}


#port8080の許可
resource "aws_vpc_security_group_ingress_rule" "allow-8080" {

  # ポート番号指定
  from_port = 8080
  to_port   = 8080
  # プロトコル指定
  ip_protocol = "tcp"
  # VPCのCidrBlock
  cidr_ipv4 = aws_vpc.test_vpc.cidr_block
  # Security GroupのID指定
  security_group_id = aws_security_group.sg-ec2.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-8080"
  }
}

# Security Group作成 -------------------------------------------
# RDS用のセキュリティグループ
resource "aws_security_group" "sg-rds" {
  # 作成するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # 説明
  description = "RDS"
  # Security Group名
  name = "aws-study-test-sg-rds"


  tags = {
    Name = "aws-study-test-sg-rds"
  }
}

# egress rule（アウトバウンドルール）作成 -------------------------------------------
# 全ての許可
resource "aws_vpc_security_group_egress_rule" "allow-all" {
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
  security_group_id = aws_security_group.sg-ec2.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-all"
  }
}

# RDS用
# ingress rule（インバウンドルール）作成 -------------------------------------------
# 3306の許可
resource "aws_vpc_security_group_ingress_rule" "allow-http-rds" {
  # ポート番号指定
  from_port = 3306
  to_port   = 3306
  # プロトコル指定
  ip_protocol = "tcp"
  # VPCのCidrBlock
  cidr_ipv4 = aws_vpc.test_vpc.cidr_block
  # Security GroupのID指定
  security_group_id = aws_security_group.sg-rds.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "allow-3306"
  }
}


# egress rule（アウトバウンドルール）作成 -------------------------------------------
# 全ての許可
resource "aws_vpc_security_group_egress_rule" "rds-allow-all" {
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
  security_group_id = aws_security_group.sg-rds.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "rds-allow-all"
  }
}