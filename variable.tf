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
    Project     = "Workshop"
  }
}