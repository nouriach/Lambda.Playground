variable "aws_profile" {
  description = "Given name in the credential file"
  type        = string
  default     = ""
}

variable "shared_credentials_file" {
  description = "Profile file with credentials to the AWS account"
  type        = string
  default     = "~/.aws/credentials"
}

variable "lambda_func_name" {
  description = "Name of our lambda function"
  type        = string
  default     = "MyFirstLambda"
}

variable "lambda_project_path" {
  description = "Relative path to the Lambda project"
  type        = string
  default     = "../src/MyFirstLambda/src/MyFirstLambda"
}