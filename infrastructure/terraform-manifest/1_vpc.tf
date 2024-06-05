
module "vpc" {
  source = "./modules/vpc"

  vpc_name                = "react-app-2048-vpc"
  cluster_name                = local.cluster_name
  vpc_cidr                = var.vpc_cidr
  availability_zones      = var.availability_zones
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  environment                 = var.environment
}