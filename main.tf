module "provision-eks" {
  source = "./provision-eks"
  region = var.region
  tags = var.tags
}