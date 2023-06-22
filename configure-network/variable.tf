variable "region" {
  type = string
  description = "AWS Zone"
}

variable "tags" {
  description = "Tags to set on eks"
  type        = map(string)
  default     = {}
}

variable "vpc_cidr" {
  type = string
  description = "AWS Zone"
}

variable "project" {
  type = string
  description = "AWS Zone"
}

variable "availability_zones_count" {
  type = string
  description = "AWS Zone"
}

variable "subnet_cidr_bits" {
  type = string
  description = "AWS Zone"
}
