output "eks_cluster_endpoint" {
  description = "Endpoint for EKS cluster."
  value       = module.eks_cluster.eks_cluster_endpoint
}

output "ecr_repository_url" {
  description = "URL of the ECR repository."
  value       = aws_ecr_repository.wordpress_repo.repository_url
}
