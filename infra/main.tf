provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support   = true # Necessário para RDS publico
  enable_dns_hostnames = true # Necessário para RDS publico

  tags = {
    Name = "aws-bootcamp"
  }
}

module "network" {
  source = "./modules/network"

  vpc_id = aws_vpc.main.id
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
  availability_zone_c = var.availability_zone_c
  pvt_subnet1_cidr_block = var.pvt_subnet1_cidr_block
  public_subnet1_cidr_block = var.public_subnet1_cidr_block
  public_subnet2_cidr_block = var.public_subnet2_cidr_block
  rds_subnet_cidr_block = var.rds_subnet_cidr_block
}


