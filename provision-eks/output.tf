output "aws_eks_cluster_name" {
  value = aws_eks_cluster.this.id
}

output "aws_eks_cluster_id" {
  value = aws_security_group.eks_cluster.id
}