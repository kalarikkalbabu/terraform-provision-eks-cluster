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

variable "eks_nodes_id" {
  type = string
  description = "EKS node id"
}


variable "vpc_id" {
  type = string
  description = "EKS node id"
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}