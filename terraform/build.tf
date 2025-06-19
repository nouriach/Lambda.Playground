# For Windows
#resource "null_resource" "build_dotnet_lambda_windows" {
#  count = var.is_windows ? 1 : 0
#
#  provisioner "local-exec" {
#    command = <<EOT
#      dotnet restore "${local.lambda_full_path}/MyFirstLambda.csproj"
#      dotnet publish "${local.lambda_full_path}/MyFirstLambda.csproj" `
#        -c Release `
#        -r linux-x64 `
#        --self-contained false `
#        -o "${local.lambda_full_path}/publish"
#    EOT
#    interpreter = ["PowerShell", "-Command"]
#  }
#
#  triggers = {
#    always_run = timestamp()
#  }
#}

# For macOS/Linux
resource "null_resource" "build_dotnet_lambda_unix" {
  count = var.is_windows ? 0 : 1

  provisioner "local-exec" {
    command = <<EOT
      dotnet restore "${local.lambda_full_path}/MyFirstLambda.csproj"
      dotnet publish "${local.lambda_full_path}/MyFirstLambda.csproj" \
        -c Release \
        -r linux-x64 \
        --self-contained false \
        -o "${local.lambda_full_path}/publish"
    EOT
    interpreter = ["/bin/sh", "-c"]
  }

  triggers = {
    always_run = timestamp()
  }
}