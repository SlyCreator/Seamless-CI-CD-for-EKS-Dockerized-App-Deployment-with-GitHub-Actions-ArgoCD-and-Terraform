terraform {
  backend "s3" {
    bucket         = "your-terraform-bucket-77"
    key            = "terraform/terraform.state"
    region         = "us-east-1"
    dynamodb_table = "eks-terraform-state-77"
  }
}

