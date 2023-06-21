variable "region" {
  type = string
  description = "AWS Zone"
}

variable "tags" {
  description = "Tags to set on eks"
  type        = map(string)
  default     = {}
}