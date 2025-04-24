# 疎通テスト用のリスナールール
resource "aws_lb_listener" "test_http_alb_listener" {
  # HTTPでのアクセスを受け付ける
  port              = "80"
  protocol          = "HTTP"
  load_balancer_arn = aws_lb.test_alb.arn
  # load_balancer_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:442426854428:loadbalancer/app/test-alb/787145dfb28f9a96"

  # "ok" という固定レスポンスを設定する
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test_tg.arn
    # target_group_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:442426854428:targetgroup/test-tg/b33d8742b59a3317"
  }
}

resource "aws_lb_listener_rule" "test_rule" {
  listener_arn = aws_lb_listener.test_http_alb_listener.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test_tg.arn
  }

  condition {
    path_pattern {
      values = ["/"]
    }
  }
}