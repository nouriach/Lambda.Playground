# Lambda.Playground

This repository provides a complete working example of building and deploying a **.NET 8 AWS Lambda** using **Terraform**, along with a scheduled trigger via **Amazon EventBridge**.

It accompanies a two-part blog series that walks through setting up and deploying the Lambda step-by-step:

📘 **Blog Series:**

1. **[Building the Foundation: Set up your .NET 8 Lambda with Terraform](https://medium.com/the-tech-collective/building-the-foundation-set-up-your-net-8-lambda-with-terraform-06113fc88bf7)**  
   Learn how to scaffold a .NET 8 AWS Lambda project and deploy it using Terraform.

2. **[Deploy a Scheduled .NET 8 Lambda with Terraform and EventBridge](https://medium.com/the-tech-collective/deploy-a-scheduled-net-8-lambda-with-terraform-and-eventbridge-6fecad6da512)**  
   Enhance your setup by adding a scheduled rule with Amazon EventBridge to invoke your Lambda on a schedule.

---

## 🗺️ Project Structure

```
|_Lambda.Playground
 |_src
  |_MyFirstLambda
    |_src
    |_test
 |_terraform
  |_main.tf
  |_etc.
```

---

## 🧰 Tech Stack

- **.NET 8**
- **AWS Lambda**
- **Amazon EventBridge**
- **Terraform**

---

## 🚀 Getting Started

### Prerequisites

- [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI with appropriate permissions
- An AWS account with access to Lambda, EventBridge, and IAM

### How to Deploy the Infrastructure using Terraform

```
cd terraform
terraform init
terraform apply
```

---
