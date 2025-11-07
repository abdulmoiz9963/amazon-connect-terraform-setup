module "iam" {
  source = "./modules/connect/iam"
}

module "dynamodb" {
  source = "./modules/connect/dynamodb"
}

module "s3" {
  source = "./modules/connect/S3"
}

module "lambda" {
  source          = "./modules/connect/lambda"
  lambda_role_arn = module.iam.lambda_role_arn
  dynamodb_table  = module.dynamodb.table_name
}

module "sns" {
  source      = "./modules/connect/sns"
  alert_email = var.alert_email
}

module "amazon_connect" {
  source         = "./modules/connect/amazon-connect"
  instance_alias = var.instance_alias
}

module "cloudwatch" {
  source = "./modules/connect/cloudwatch"
}
