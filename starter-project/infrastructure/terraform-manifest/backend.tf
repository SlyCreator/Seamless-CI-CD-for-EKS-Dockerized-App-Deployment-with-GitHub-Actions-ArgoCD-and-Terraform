terraform {
  backend "s3" {
    bucket         = "terraform-bucket-first"
    key            = "terraform/terraform.state"
    region         = "us-east-1"
    dynamodb_table = "eks-terraform-state"
  }
}

