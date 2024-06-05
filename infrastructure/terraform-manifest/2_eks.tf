module "eks-cluster" {
  source = "./modules/eks"
  cluster_name = local.cluster_name
  cluster_version = var.cluster_version
  desired_capacity = var.desired_capacity
  instance_type = var.instance_type
  max_capacity = var.max_capacity
  min_capacity = var.min_capacity
  private_subnet_ids = module.vpc.private_subnets
  vpc_id = module.vpc.vpc_id

  depends_on = [module.vpc]
}