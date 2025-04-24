resource "aws_wafv2_web_acl_association" "example_association" {
  resource_arn = aws_lb.test_alb.arn
  #   resource_arn = "arn:aws:elasticloadbalancing:ap-northeast-1:442426854428:loadbalancer/app/test-alb/f28f5b6750094814"
  web_acl_arn = aws_wafv2_web_acl.example.arn
  #   web_acl_arn  = "arn:aws:wafv2:ap-northeast-1:442426854428:regional/webacl/managed-rule-example/6bc08b06-d5bf-4a78-af40-5d2ee2df26a0"
}