variable "lambda_role_arn" {
  description = "IAM Role ARN for the Lambda function"
  type        = string
}

variable "dynamodb_table" {
  description = "DynamoDB table name used by Lambda"
  type        = string
}
