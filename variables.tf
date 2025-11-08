variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-west-2"
}

# Optional: set via environment or CLI if you want to use a named profile
variable "profile" {
  description = "AWS shared config/credentials profile name (optional)"
  type        = string
  default     = null
}

variable "alert_email" {
  description = "Email for SNS alerts"
  default     = "youremail@example.com"
}

variable "instance_alias" {
  default = "amazon-connect-instance-moiz9154"
}
