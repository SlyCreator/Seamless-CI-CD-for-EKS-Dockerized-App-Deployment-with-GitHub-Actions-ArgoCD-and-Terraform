# 0_ecr.tf
module "ecr" {
  source      = "./modules/ecr"
  name        = var.ecr_repo_name

}