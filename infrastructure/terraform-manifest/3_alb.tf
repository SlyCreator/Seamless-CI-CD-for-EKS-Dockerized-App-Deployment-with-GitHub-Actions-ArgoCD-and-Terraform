module "alb" {
  source = "./modules/alb"

  cluster_name = local.cluster_name
  environment  = var.environment
  oidc_arn     = module.eks-cluster.oidc_provider_arn
  oidc_url     = module.eks-cluster.cluster_oidc_issuer_url

  depends_on = [module.eks-cluster]
}