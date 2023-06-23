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
  description = "Project Name"
}

variable "eks_nodes_id" {
  type = string
  description = "EKS node id"
}


variable "vpc_id" {
  type = string
  description = "VPC id"
}

variable "private_subnets" {
  type = list(string)
  description = "Private Subnets in different availability zones"
}

variable "public_subnets" {
  type = list(string)
  description = "Public Subnets in different availability zones"
}