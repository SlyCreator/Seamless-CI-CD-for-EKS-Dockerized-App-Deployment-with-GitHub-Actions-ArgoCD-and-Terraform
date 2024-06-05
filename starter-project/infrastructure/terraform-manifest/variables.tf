variable "region" {
  type        = string
  description = "The AWS region where resources will be deployed."
}
variable "environment" {
  description = ""
}



############# ECR ##########
variable "ecr_repo_name" {
    description = "The name of the ECR Repository"
}

############# VPC ############
variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "availability_zones" {
  type        = list(string)
  description = "A list of availability zones for the VPC."
}

variable "public_subnet_cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR blocks for the public subnets."
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR blocks for the private subnets."
}

############# EKS ############
variable "cluster_name" {
  type        = string
  description = "The name of the EKS Kubernetes cluster."
}

variable "cluster_version" {
  description = "The version of the EKS cluster."
}

variable "instance_type" {
  description = "The instance type for the EKS worker nodes."
}

variable "desired_capacity" {
  description = "The desired number of worker nodes in the EKS cluster."
}

variable "max_capacity" {
  description = "The maximum number of worker nodes in the EKS cluster."
}

variable "min_capacity" {
  description = "The minimum number of worker nodes in the EKS cluster."
}
