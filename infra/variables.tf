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

##### VPC NETWORK #####

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

##### RDS INSTANCE #####

variable "rds_db_name" {
  description = "RDS name"
  type        = string
}

variable "rds_engine" {
  description = "RDS engine"
  type        = string
}

variable "rds_engine_version" {
  description = "RDS engine version"
  type        = string
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "rds_storage_type" {
  description = "RDS instance class"
  type        = string
}

variable "rds_username" {
  description = "RDS username"
  type        = string
}

variable "rds_password" {
  description = "RDS password"
  type        = string
}


