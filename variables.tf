variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
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
  description = "Amazon Connect instance alias"
  default     = "amazon-connect-instance"
}
