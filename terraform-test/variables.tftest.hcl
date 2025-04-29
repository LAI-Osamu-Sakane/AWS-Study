# VPCのテスト
run "verify_vpc" {
  command = plan
  # command = apply

  assert {
    condition     = aws_vpc.test_vpc.cidr_block == "10.1.0.0/16"
    error_message = "vpc_cidr_blockが設定値と一致しません"
  }

  assert {
    condition     = aws_vpc.test_vpc.tags.Name == "aws_study_test_vpc"
    error_message = "tags_Name が一設定値と一致しません"
  }
}

# internetGatewayのテスト------------------------------------------------------------------------------------
run "verify_igw" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_internet_gateway.test_igw.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_internet_gateway.test_igw.tags.Name == "aws_study_test_igw"
    error_message = "vpc_idの値が一致しません"
  }

}

# subnetのテスト------------------------------------------------------------------------------------
run "verify_subnet" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.public_1a.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.public_1a.availability_zone == "ap-northeast-1a"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.public_1a.cidr_block == "10.1.1.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.public_1a.tags.Name == "aws_study_test-public-1a"
    error_message = "tags_Nameの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.public_1c.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.public_1c.availability_zone == "ap-northeast-1c"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.public_1c.cidr_block == "10.1.2.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.public_1c.tags.Name == "aws_study_test-public-1c"
    error_message = "tags_Nameの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.private_1a.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.private_1a.availability_zone == "ap-northeast-1a"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.private_1a.cidr_block == "10.1.3.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.private_1a.tags.Name == "aws_study_test-private-1a"
    error_message = "tags_Nameの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.private_1c.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.private_1c.availability_zone == "ap-northeast-1c"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.private_1c.cidr_block == "10.1.4.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.private_1c.tags.Name == "aws_study_test-private-1c"
    error_message = "tags_Nameの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.rds_prv_1a.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.rds_prv_1a.availability_zone == "ap-northeast-1a"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.rds_prv_1a.cidr_block == "10.1.10.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.rds_prv_1a.tags.Name == "aws_study_rds_prv-1a"
    error_message = "tags_Nameの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_subnet.rds_prv_1c.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_subnet.rds_prv_1c.availability_zone == "ap-northeast-1c"
    error_message = "availability_zoneの値が一致しません"
  }

  assert {
    condition     = aws_subnet.rds_prv_1c.cidr_block == "10.1.11.0/24"
    error_message = "cidr_blockの値が一致しません"
  }

  assert {
    condition     = aws_subnet.rds_prv_1c.tags.Name == "aws_study_rds_prv-1c"
    error_message = "tags_Nameの値が一致しません"
  }

}

# rtのテスト------------------------------------------------------------------------------------
run "verify_rt" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_route_table.rtb-public.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_route_table.rtb-public.tags.Name == "aws-study-test-rtb-public"
    error_message = "tags_Nameの値が一致しません"
  }

  #  # apply出ないとエラーになる
  # assert {
  #   condition     = aws_route_table.rtb-private-1a.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_route_table.rtb-private-1a.tags.Name == "aws-study-test-rtb-private-1a"
    error_message = "tags_Nameの値が一致しません"
  }

  #  # apply出ないとエラーになる
  # assert {
  #   condition     = aws_route_table.rtb-private-1c.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_route_table.rtb-private-1c.tags.Name == "aws-study-test-rtb-private-1c"
    error_message = "tags_Nameの値が一致しません"
  }

  #  # apply出ないとエラーになる
  # assert {
  #   condition     = aws_route_table.rds-rtb-private.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_route_table.rds-rtb-private.tags.Name == "aws-study-test-rds-rtb-private"
    error_message = "tags_Nameの値が一致しません"
  }

  assert {
    condition     = aws_route.public.destination_cidr_block == "0.0.0.0/0"
    error_message = "destination_cidr_blockの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_route.public.route_table_id == aws_route_table.rtb-public.id
  #   error_message = "destination_cidr_blockの値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_route.public.gateway_id == aws_internet_gateway.test_igw.id
  #   error_message = "destination_cidr_blockの値が一致しません"
  # }
}

# sgのテスト------------------------------------------------------------------------------------
run "verify_sg" {
  command = plan
  # command = apply

  # # EC2用のセキュリティグループ
  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_security_group.sg-ec2.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_security_group.sg-ec2.name == "aws-study-test-sg-ec2"
    error_message = "nameの値が一致しません"
  }

  assert {
    condition     = aws_security_group.sg-ec2.tags.Name == "aws-study-test-sg-ec2"
    error_message = "tags_Nameの値が一致しません"
  }

  # RDS用のセキュリティグループ
  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_security_group.sg-rds.vpc_id == aws_vpc.test_vpc.id
  #   error_message = "vpc_idの値が一致しません。"
  # }

  assert {
    condition     = aws_security_group.sg-rds.name == "aws-study-test-sg-rds"
    error_message = "nameの値が一致しません"
  }

  assert {
    condition     = aws_security_group.sg-rds.tags.Name == "aws-study-test-sg-rds"
    error_message = "tags_Nameの値が一致しません"
  }

  # ingress rule（インバウンドルール）作成
  # HTTPの許可
  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http.from_port == 80
    error_message = "from_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http.to_port == 80
    error_message = "to_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http.ip_protocol == "tcp"
    error_message = "ip_protocolの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-http.cidr_ipv4 == aws_vpc.test_vpc.cidr_block
  #   error_message = "cidr_ipv4の値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-http.security_group_id == aws_security_group.sg-ec2.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http.tags.Name == "allow-http"
    error_message = "tags_Nameの値が一致しません"
  }

  #HTTPSの許可
  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-https.from_port == 443
    error_message = "from_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-https.to_port == 443
    error_message = "to_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-https.ip_protocol == "tcp"
    error_message = "ip_protocolの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-https.cidr_ipv4 == aws_vpc.test_vpc.cidr_block
  #   error_message = "cidr_ipv4の値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-https.security_group_id == aws_security_group.sg-ec2.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-https.tags.Name == "allow-https"
    error_message = "tags_Nameの値が一致しません"
  }

  # SSHの許可
  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-ssh.from_port == 22
    error_message = "from_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-ssh.to_port == 22
    error_message = "to_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-ssh.ip_protocol == "tcp"
    error_message = "ip_protocolの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-ssh.cidr_ipv4 == aws_vpc.test_vpc.cidr_block
  #   error_message = "cidr_ipv4の値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-ssh.security_group_id == aws_security_group.sg-ec2.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-ssh.tags.Name == "allow-SSH"
    error_message = "tags_Nameの値が一致しません"
  }

  # port8080の許可(java用のポート)
  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-8080.from_port == 8080
    error_message = "from_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-8080.to_port == 8080
    error_message = "to_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-8080.ip_protocol == "tcp"
    error_message = "ip_protocolの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-8080.cidr_ipv4 == aws_vpc.test_vpc.cidr_block
  #   error_message = "cidr_ipv4の値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-8080.security_group_id == aws_security_group.sg-ec2.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-8080.tags.Name == "allow-8080"
    error_message = "tags_Nameの値が一致しません"
  }


  # RDS用
  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http-rds.from_port == 3306
    error_message = "from_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http-rds.to_port == 3306
    error_message = "to_portの値が一致しません"
  }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http-rds.ip_protocol == "tcp"
    error_message = "ip_protocolの値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-http-rds.cidr_ipv4 == aws_vpc.test_vpc.cidr_block
  #   error_message = "cidr_ipv4の値が一致しません"
  # }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_ingress_rule.allow-http-rds.security_group_id == aws_security_group.sg-rds.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_ingress_rule.allow-http-rds.tags.Name == "allow-3306"
    error_message = "tags_Nameの値が一致しません"
  }

  # egress rule（アウトバウンドルール）作成
  assert {
    condition     = aws_vpc_security_group_egress_rule.allow-all.ip_protocol == "-1"
    error_message = "ip_protocolの値が一致しません"
  }

  # apply出ないとエラーになる
  assert {
    condition     = aws_vpc_security_group_egress_rule.allow-all.cidr_ipv4 == "0.0.0.0/0"
    error_message = "cidr_ipv4の値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_egress_rule.allow-all.security_group_id == aws_security_group.sg-ec2.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_egress_rule.allow-all.tags.Name == "allow-all"
    error_message = "tags_Nameの値が一致しません"
  }

  # RDS用
  assert {
    condition     = aws_vpc_security_group_egress_rule.rds-allow-all.ip_protocol == "-1"
    error_message = "ip_protocolの値が一致しません"
  }

  # apply出ないとエラーになる
  assert {
    condition     = aws_vpc_security_group_egress_rule.rds-allow-all.cidr_ipv4 == "0.0.0.0/0"
    error_message = "cidr_ipv4の値が一致しません"
  }

  # # apply出ないとエラーになる
  # assert {
  #   condition = aws_vpc_security_group_egress_rule.rds-allow-all.security_group_id == aws_security_group.sg-rds.id
  #   error_message = "security_group_idの値が一致しません"
  # }

  assert {
    condition     = aws_vpc_security_group_egress_rule.rds-allow-all.tags.Name == "rds-allow-all"
    error_message = "tags_Nameの値が一致しません"
  }
}

# ec2のテスト------------------------------------------------------------------------------------
run "verify_ec2" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_instance.test_ec2.vpc_security_group_ids[0] == aws_security_group.sg-ec2.id
  #   error_message = "vpc_security_group_idsの値が一致しません。"
  # }

  # assert {
  #   condition = aws_instance.test_ec2.subnet_id == aws_subnet.public_1a.id
  #   error_message = "subnet_idの値が一致しません"
  # }

  assert {
    condition     = aws_instance.test_ec2.ami == "ami-0599b6e53ca798bb2"
    error_message = "amiの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.instance_type == "t2.micro"
    error_message = "instance_typeの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.root_block_device[0].volume_size == 8
    error_message = "root_block_device.voume_sizeの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.root_block_device[0].volume_type == "gp3"
    error_message = "root_block_device.volume_typeの値が一致しません"
  }
  assert {
    condition     = aws_instance.test_ec2.tags.Name == "aws-study-test-ec2"
    error_message = "tags_Nameの値が一致しません"
  }

}

# 2台目
run "verify_ec2-2" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_instance.test_ec2.vpc_security_group_ids[0] == aws_security_group.sg-ec2.id
  #   error_message = "vpc_security_group_idsの値が一致しません。"
  # }

  # assert {
  #   condition = aws_instance.test_ec2.subnet_id == aws_subnet.public_1a.id
  #   error_message = "subnet_idの値が一致しません"
  # }

  assert {
    condition     = aws_instance.test_ec2.ami == "ami-0599b6e53ca798bb2"
    error_message = "amiの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.instance_type == "t2.micro"
    error_message = "instance_typeの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.root_block_device[0].volume_size == 8
    error_message = "root_block_device.voume_sizeの値が一致しません"
  }

  assert {
    condition     = aws_instance.test_ec2.root_block_device[0].volume_type == "gp3"
    error_message = "root_block_device.volume_typeの値が一致しません"
  }
  assert {
    condition     = aws_instance.test_ec2.tags.Name == "aws-study-test-ec2-2"
    error_message = "tags_Nameの値が一致しません"
  }

}

# rdsのテスト------------------------------------------------------------------------------------
run "verify_rds" {
  command = plan
  # command = apply

  # # apply出ないとエラーになる
  # assert {
  #   condition     = aws_db_instance.test-rds.vpc_security_group_ids[0] == aws_security_group.sg-rds.id
  #   error_message = "vpc_security_group_idsの値が一致しません。"
  # }

  assert {
    condition     = aws_db_instance.test-rds.db_subnet_group_name == aws_db_subnet_group.rds-study-test-subnet.name
    error_message = "db_subnet_group_nameの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.identifier == "test-rds"
    error_message = "identifierの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.allocated_storage == 20
    error_message = "allocated_storageの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.storage_type == "gp2"
    error_message = "storage_typeの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.engine == "mysql"
    error_message = "engineの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.engine_version == "8.0.40"
    error_message = "engine_versionの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.instance_class == "db.t4g.micro"
    error_message = "instance_classの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.license_model == "general-public-license"
    error_message = "license_modelの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.port == 3306
    error_message = "portの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.allow_major_version_upgrade == false
    error_message = "allow_major_version_upgradeの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.auto_minor_version_upgrade == true
    error_message = "auto_minor_version_upgradeの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.backup_retention_period == 1
    error_message = "backup_retention_periodの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.db_name == "testdb"
    error_message = "db_nameの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.username == "root"
    error_message = "usernameの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.password == "rootroot"
    error_message = "passwordの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.monitoring_interval == 0
    error_message = "monitoring_intervalの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.maintenance_window == "sun:22:00-sun:23:00"
    error_message = "maintenance_windowの値が一致しません"
  }

  assert {
    condition     = aws_db_instance.test-rds.backup_window == "21:00-22:00"
    error_message = "backup_windowの値が一致しません"
  }

  assert {
    condition     = aws_db_subnet_group.rds-study-test-subnet.name == "rds-private-subnet"
    error_message = "nameの値が一致しません"
  }

  # assert {
  #   condition     = aws_db_subnet_group.rds-study-test-subnet.subnet_ids[0] == aws_subnet.rds_prv_1a.id
  #   error_message = "subnet_ids[0]の値が一致しません"
  # }

  # assert {
  #   condition     = aws_db_subnet_group.rds-study-test-subnet.subnet_ids[1] == aws_subnet.rds_prv_1c.id
  #   error_message = "subnet_ids[1]の値が一致しません"
  # }
}