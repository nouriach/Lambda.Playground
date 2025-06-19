data "aws_caller_identity" "current" {}

locals {
  account_id       = data.aws_caller_identity.current.account_id
  lambda_full_path = "${path.module}/${var.lambda_project_path}"
}