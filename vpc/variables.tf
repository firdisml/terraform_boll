variable "vpc_aws_region" {
  description = "Region of VPC"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "The name of vpc"
  type        = string
  default     = "daus-general-vpc"
}

variable "vpc_cidr" {
  description = "The cidr block for our vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_public_subnet" {
  description = "The public subnet"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnet_tags" {
  description = "Public subnet tags"
  type        = map(string)
  default = {
    "Type"     = "public-subnet"
    "VPC Name" = "daus-general-vpc"
  }
}

variable "vpc_tags" {
  description = "VPC tags"
  type        = map(string)
  default = {
    "VPC Name" = "daus-general-vpc"
  }
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Enable DNS support for the VPC"
  type        = bool
  default     = true
}

variable "map_public_ip_on_launch" {
  description = "Automatically assign a public IP address to instances launched in public subnets"
  type        = bool
  default     = true
}
