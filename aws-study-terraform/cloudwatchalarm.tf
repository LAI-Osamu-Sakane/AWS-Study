resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name          = "AWS-study-EC2CPUutilizationAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  datapoints_to_alarm = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 15
  unit                = "Percent"
  alarm_description   = "This metric monitors ec2 cpu utilization"
  treat_missing_data  = "missing"
}