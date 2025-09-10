variable "vcp_cid" {
  type        = string
  description = "vpc cidr we need to create"
}

variable "env" {
  type        = string
  description = "what env we want to create (dev, qa)"
}

variable "subnet_cidr" {
  type        = string
  description = "subnet vpc cidr we need to create"
}

variable "az"{
    type        = string
    description = "a-zone of subnet "
}