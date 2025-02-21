variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "enable_dns_hostnames" {
    default = true
}

variable "cidr_block" {
    default = "10.0.0.0/16"
}

variable "common_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
  type        = list

  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "This application requires at least two public subnets"
  }
}

variable "private_subnet_cidrs" {
  type        = list

  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "This application requires at least two private subnets"
  }
}

variable "database_subnet_cidrs" {
  type        = list

  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "This application requires at least two database subnets"
  }
}