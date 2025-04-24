
# Route Table作成 -------------------------------------------
# 経路情報
# パブリックのルートテーブル
resource "aws_route_table" "rtb-public" {
  # Route Tableを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws-study-test-rtb-public"
  }
}

# 1つ目のプライベートのルートテーブル
resource "aws_route_table" "rtb-private-1a" {
  # Route Tableを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws-study-test-rtb-private-1a"
  }
}

# 2つ目のプライベートのルートテーブル
resource "aws_route_table" "rtb-private-1c" {
  # Route Tableを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws-study-test-rtb-private-1c"
  }
}

# Route Tableへ経路情報を追加
# インターネット(0.0.0.0/0)へ接続する際はInternet Gatewayを使用する設定する
resource "aws_route" "public" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id         = aws_route_table.rtb-public.id
  gateway_id             = aws_internet_gateway.test_igw.id
}

# RDS用
# 1つ目のプライベートのルートテーブル
resource "aws_route_table" "rds-rtb-private" {
  # Route Tableを設置するVPCのID
  vpc_id = aws_vpc.test_vpc.id
  # タグで名前（インスタンスのname欄に表示）を指定
  tags = {
    Name = "aws-study-test-rds-rtb-private"
  }
}