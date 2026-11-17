module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.29.0"

  name               = var.cluster_name
  kubernetes_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  # Disable EKS Auto Mode: use managed EC2 nodes
  compute_config = {
    enabled = false
  }

  # EKS managed node groups
  eks_managed_node_groups = {
    node_groups = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = [var.instance_type]

      min_size     = var.min_capacity
      max_size     = var.max_capacity
      desired_size = var.desired_capacity
    }
  }

  # EKS managed addons
  addons = {
    coredns = {}

    kube-proxy = {}

    vpc-cni = {
      before_compute = true
    }

    eks-pod-identity-agent = {
      before_compute = true
    }
  }

  tags = {
    Environment = "dev"
    Project     = "eks-gitops"
    ManagedBy   = "Terraform"
  }
}

