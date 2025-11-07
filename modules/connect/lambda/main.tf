resource "aws_lambda_function" "connect_handler" {
  function_name = "connectHandler"
  role          = var.lambda_role_arn
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  filename      = "${path.module}/lambda.zip"
  timeout       = 10
  environment {
    variables = {
      TABLE_NAME = var.dynamodb_table
    }
  }
}
