
module "eks" {
  source          = "terraform-aws-modules/eks/aws"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  enable_irsa     = true
  subnet_ids = var.private_subnet_ids
  vpc_id          = var.vpc_id
  cluster_endpoint_public_access = true
  enable_cluster_creator_admin_permissions = true


  eks_managed_node_group_defaults = {
    instance_type = var.instance_type

  }

  eks_managed_node_groups = {
    node_groups =  {
      min_size     =  var.min_capacity
      max_size     =  var.max_capacity
      desired_size = var.desired_capacity

    }
  }

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
}

