variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "environment" {
  type = string
  description = "Environment either staging or Prod"
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}


variable "cluster_name" {
  description = ""
}