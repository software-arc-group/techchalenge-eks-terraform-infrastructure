output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}

output "ecr_repository_url" {
  value       = aws_ecr_repository.tech-challenge.repository_url
  description = "URL do repositório ECR para o app"
}