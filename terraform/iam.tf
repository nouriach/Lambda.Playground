data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
    actions = [
      "sts:AssumeRole"
    ]
  }
}

data "aws_iam_policy_document" "allow_logging" {
  policy_id = "AllowLambdaPushLog"
  statement {
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
    resources = ["arn:aws:logs:*:*:*"]
  }
}

# Create an IAM Role for the Lambda. Its rules are defined in the Policy Document.
resource "aws_iam_role" "lambda_iam_role" {
  name               = "iam_for_lambda"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json
}

# Create an IAM Policy for Logging. Its rules are defined in the Policy Document.
resource "aws_iam_policy" "lambda_logging" {
  name   = "lambda-logging-cloudwatch"
  policy = data.aws_iam_policy_document.allow_logging.json
}

# Attach the policy to the IAM Role

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_iam_role.id
  policy_arn = aws_iam_policy.lambda_logging.arn
}