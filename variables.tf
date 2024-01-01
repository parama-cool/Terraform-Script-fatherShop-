variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for subnets."
  type        = string
  default     = "10.0.1.0/24"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "devops-cluster"
}

variable "eks_subnet_ids" {
  description = "subnet IDs for EKS nodes."
  type        = list(string)
  default     = []
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository."
  type        = string
  default     = "wordpress"
}

variable "db_password" {
  description = "Database password."
  type        = string
}

