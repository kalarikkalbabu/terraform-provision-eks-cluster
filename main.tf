# Module to configure vpc,subnet, IGW, NAT and security groups
module "configure-network" {
  source = "./configure-network"
  region = var.region
  tags = var.tags
  project = var.project
  vpc_cidr = var.vpc_cidr
  subnet_cidr_bits = var.subnet_cidr_bits
  availability_zones_count = var.availability_zones_count
}

# Module to create EKS, this module has dependenccy with configure-network module and uses output data from it
module "provision-eks" {
  source = "./provision-eks"
  region = var.region
  tags = var.tags
  project = var.project
  eks_nodes_id = module.configure-worker-nodes.eks_nodes_id
  vpc_id = module.configure-network.vpc_id
  private_subnets = module.configure-network.private_subnets
  public_subnets = module.configure-network.public_subnets
  depends_on = [module.configure-network]

}

# Module to create Worker nodes in EKS, this module has dependenccy with configure-network module and uses output data from it
module "configure-worker-nodes" {
  source = "./configure-worker-nodes"
  region = var.region
  tags = var.tags
  project = var.project
  vpc_id = module.configure-network.vpc_id
  aws_eks_cluster_id = module.provision-eks.aws_eks_cluster_id
  aws_eks_cluster_name = module.provision-eks.aws_eks_cluster_name
  private_subnets = module.configure-network.private_subnets
  depends_on = [module.configure-network]
}