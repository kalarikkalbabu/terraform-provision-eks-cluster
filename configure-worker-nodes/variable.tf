variable "region" {
  type = string
  description = "AWS Zone"
}

variable "tags" {
  description = "Tags to set on eks"
  type        = map(string)
  default     = {}
}

variable "project" {
  type = string
  description = "AWS Zone"
}

variable "aws_eks_cluster_name" {
  type = string
  description = "AWS Zone"
}

variable "vpc_id" {
  type = string
  description = "EKS node id"
}

variable "aws_eks_cluster_id" {
  type = string
  description = "EKS node id"
}

variable "private_subnets" {
  type = list(string)
}