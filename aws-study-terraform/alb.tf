resource "aws_lb" "test_alb" {
  name                             = "test-alb"
  load_balancer_type               = "application"
  internal                         = false
  idle_timeout                     = 60
  enable_deletion_protection       = false
  enable_cross_zone_load_balancing = false
  subnets = [
    aws_subnet.public_1a.id, aws_subnet.public_1c.id
  ]
  security_groups = [
    aws_security_group.sg-ec2.id
  ]
}