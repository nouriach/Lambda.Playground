resource "aws_lambda_function" "expire_nickname_reservations" { 
  filename         = data.archive_file.zip_myfirstlambda_lambda.output_path
  source_code_hash = data.archive_file.zip_myfirstlambda_lambda.output_base64sha256
  function_name    = var.lambda_func_name
  role             = aws_iam_role.lambda_iam_role.arn
  handler          = "MyFirstLambda::MyFirstLambda::Function::FunctionHandler"
  runtime          = "dotnet8"
  depends_on       = [aws_iam_role_policy_attachment.lambda_policy]
}

data "archive_file" "zip_myfirstlambda_lambda" {
  type        = "zip"
  source_dir  = local.lambda_full_path
  output_path = "${local.lambda_full_path}/lambda.zip"
}