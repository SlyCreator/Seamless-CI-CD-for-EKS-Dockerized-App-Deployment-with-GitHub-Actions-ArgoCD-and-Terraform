
variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "Name of the Amazon EKS cluster"
  type        = string
  default     = "my-eks-app"
}


# ECR
variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  type        = string
}

# VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones for AWS Mumbai"
  type        = list(string)
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

# Environment
variable "environment" {
  description = "Deployment environment"
  type        = string
}



variable "cluster_version" {
  description = "EKS configuration: cluster_version"
  type        = string
}


variable "desired_capacity" {
  description = "EKS configuration: desired_capacity"
  type        = number
}


variable "instance_type" {
  description = "EKS configuration: instance_type"
  type        = string
}


variable "max_capacity" {
  description = "EKS configuration: max_capacity"
  type        = number
}


variable "min_capacity" {
  description = "EKS configuration: min_capacity"
  type        = number
}
