resource "aws_sns_topic" "connect_alerts" {
  name = "connect-alerts"
}

resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.connect_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email
}

output "sns_topic_arn" {
  value = aws_sns_topic.connect_alerts.arn
}
