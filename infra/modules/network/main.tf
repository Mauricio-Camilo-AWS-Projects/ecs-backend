### VPC and Subnets ###

# Private Subnets

resource "aws_subnet" "private1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.pvt_subnet1_cidr_block
  availability_zone = var.availability_zone_a

  tags = {
    Name = "aws-bootcamp-private-subnet-1"
  }
}

# Public Subnets

resource "aws_subnet" "public1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet1_cidr_block
  availability_zone = var.availability_zone_b

  tags = {
    Name = "aws-bootcamp-public-subnet-1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet2_cidr_block
  availability_zone = var.availability_zone_a

  tags = {
    Name = "aws-bootcamp-public-subnet-2"
  }
}

# internet gateway

resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id
  tags = {
    Name = "aws-bootcamp"
  }
}

# Public Route Table

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  # Route to Internet Gateway

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "aws-bootcamp-public-rtb"
  }
}

resource "aws_route_table_association" "pub_1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "pub_2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public.id
}

# database private subnets

resource "aws_subnet" "rds1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.rds_subnet_cidr_block
  availability_zone = var.availability_zone_c

  tags = {
    Name = "aws-bootcamp-db-subnet-1"
  }
}