variable "region" {
  default = "ap-south-1"
  type = string
  description = "AWS Zone"
}

variable "tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "Test"
    Project     = "EKS-Workshop"
  }
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "project" {
  type = string
  description = "Project Name"
  default = "EKS-Workshop"
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 2
}
