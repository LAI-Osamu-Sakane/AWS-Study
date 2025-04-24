
# Association作成 -------------------------------------------
# Route TableとSubnetの紐づけ
# 1つ目のパブリックサブネットの紐づけ
resource "aws_route_table_association" "association-public_1a" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.public_1a.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rtb-public.id
}


# 2つ目のパブリックサブネットの紐づけ
resource "aws_route_table_association" "association-public_1c" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.public_1c.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rtb-public.id
}


# 1つ目のプライベートサブネットの紐づけ
resource "aws_route_table_association" "association-private-1a" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.private_1a.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rtb-private-1a.id
}


# 2つ目のプライベートサブネットの紐づけ
resource "aws_route_table_association" "association-private-1c" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.private_1c.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rtb-private-1c.id
}

# RDS用
# 1つ目のプライベートサブネットの紐づけ
resource "aws_route_table_association" "association-rds-private-1a" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.rds_prv_1a.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rds-rtb-private.id
}

# 2つ目のプライベートサブネットの紐づけ
resource "aws_route_table_association" "association-rds-private-1c" {
  # 紐づけるサブネットのID
  subnet_id = aws_subnet.rds_prv_1c.id
  # 紐づけるルートテーブルのID
  route_table_id = aws_route_table.rds-rtb-private.id
}