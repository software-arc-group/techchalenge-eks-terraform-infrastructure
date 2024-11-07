variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_size" {
  description = "Tamanho do grupo de nós EKS"
  type        = number
  default     = 2
}
