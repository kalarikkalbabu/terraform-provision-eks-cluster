variable "region" {
  type = string
  description = "AWS region"
}

variable "tags" {
  description = "Tags to set on eks"
  type        = map(string)
  default     = {}
}

variable "vpc_cidr" {
  type = string
  description = "CIDR Block"
}

variable "project" {
  type = string
  description = "Project Name"
}

variable "availability_zones_count" {
  type = string
  description = "Availability zones"
}

variable "subnet_cidr_bits" {
  type = string
  description = "additional cidr bits"
}
