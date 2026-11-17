terraform {
  backend "s3" {
    bucket  = "eks-gitops-tfstate-662182808539"
    key     = "eks-gitops/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true

    # S3-native state locking (recommended)
    use_lockfile = true

    # Your existing DynamoDB table (deprecated)
    dynamodb_table = "terraform-state-lock"
  }
}

