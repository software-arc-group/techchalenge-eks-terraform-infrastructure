module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  version         = "20.28.0"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets
}