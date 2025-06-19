variable "aws_profile" {
  description = "Given name in the credential file"
  type        = string
  default     = ""
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

variable "is_windows" {
  description = "Set to true if running Terraform on Windows"
  type        = bool
  default     = false
}

variable "region" {
  type    = string
  default = "eu-west-2"
}