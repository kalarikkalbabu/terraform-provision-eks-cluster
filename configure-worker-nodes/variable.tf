variable "region" {
  type = string
  description = "AWS Region"
}

variable "tags" {
  description = "Tags to set on eks"
  type        = map(string)
  default     = {}
}

variable "project" {
  type = string
  description = "Project name"
}

variable "aws_eks_cluster_name" {
  type = string
  description = "EKS cluster name"
}

variable "vpc_id" {
  type = string
  description = "VPC id"
}

variable "aws_eks_cluster_id" {
  type = string
  description = "EKS cluster id"
}

variable "private_subnets" {
  type = list(string)
  description = "Private Subnets in different availability zones"
}