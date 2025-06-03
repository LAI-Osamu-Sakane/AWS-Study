# # RDS

resource "aws_db_subnet_group" "rds-study-test-subnet" {
  name       = "rds-private-subnet"
  subnet_ids = [aws_subnet.rds_prv_1a.id, aws_subnet.rds_prv_1c.id]
}

resource "aws_db_instance" "test-rds" {
  identifier                  = "test-rds"
  allocated_storage           = 20
  storage_type                = "gp2"
  engine                      = "mysql"
  engine_version              = "8.0.40"
  instance_class              = "db.t4g.micro"
  license_model               = "general-public-license"
  port                        = "3306"
  allow_major_version_upgrade = false
  auto_minor_version_upgrade  = true
  backup_retention_period     = 1
  db_name                     = "testdb"
  monitoring_interval         = 0
  maintenance_window          = "sun:22:00-sun:23:00"
  backup_window               = "21:00-22:00"
  username                    = "root"
  password                    = "rootroot"
  vpc_security_group_ids      = [aws_security_group.sg-rds.id]
  # db_subnet_group_name        = aws_db_subnet_group.rds-study-test-subnet.name
  db_subnet_group_name = "rds-private-subnet"
  skip_final_snapshot  = true
  depends_on = [
    aws_db_subnet_group.my_db_subnet_group
  ]
  tags = {
    Name = "aws-study-test-rds"
  }
}
