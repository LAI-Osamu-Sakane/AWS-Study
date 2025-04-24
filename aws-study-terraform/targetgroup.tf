resource "aws_lb_target_group" "test_tg" {
  name        = "test-tg"
  vpc_id      = aws_vpc.test_vpc.id
  target_type = "instance"
  # slow_start = 0
  port     = 80
  protocol = "HTTP"
  health_check {
    path                = "/"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 30
    matcher             = 200
    port                = "traffic-port"
    protocol            = "HTTP"
  }
  # depends_on = [ aws_lb.test_alb ]


}

resource "aws_lb_target_group_attachment" "test_tg_attachment" {

  target_group_arn = aws_lb_target_group.test_tg.arn
  # target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:442426854428:targetgroup/test-tg/10eaf50d7560ba81"
  target_id = aws_instance.test_ec2.id
  # target_id        = "i-024968ec9897fc7ae"

  port = 80
}