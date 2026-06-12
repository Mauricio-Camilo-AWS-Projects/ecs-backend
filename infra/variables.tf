variable "availability_zone_a" {
  description = "az of the project"
  type        = string
  # default     = "us-east-1a"
}

variable "availability_zone_b" {
  description = "az of the project"
  type        = string
  # default     = "us-east-1b"
}

variable "availability_zone_c" {
  description = "az of the project"
  type        = string
  # default     = "us-east-1c"
}

# variable "vpc_id" {
#   type = string
# }

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  # default     = "10.0.0.0/16"
}

variable "pvt_subnet1_cidr_block" {
  description = "Private subnet 1 CIDR block"
  type        = string
  # default     = "10.0.1.0/24"
}

variable "public_subnet1_cidr_block" {
  description = "Public subnet 1 CIDR block"
  type        = string
  # default     = "10.0.3.0/24"
}

variable "public_subnet2_cidr_block" {
  description = "Public subnet 2 CIDR block"
  type        = string
  # default     = "10.0.4.0/24"
}


variable "rds_subnet_cidr_block" {
  description = "RDS subnet CIDR block"
  type        = string
  # default     = "10.0.5.0/24"
}



