resource "aws_instance" "test_ec2" {
  ami                         = "ami-0599b6e53ca798bb2"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_1a.id
  associate_public_ip_address = true
  key_name                    = "AWSServ"
  vpc_security_group_ids = [
    aws_security_group.sg-ec2.id
  ]
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
  tags = {
    Name = "aws-study-test-ec2"
  }
}

resource "aws_instance" "test_ec2" {
  ami                         = "ami-0599b6e53ca798bb2"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_1c.id
  associate_public_ip_address = true
  key_name                    = "AWSServ"
  vpc_security_group_ids = [
    aws_security_group.sg-ec2.id
  ]
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
  tags = {
    Name = "aws-study-test-ec2-2"
  }
}

