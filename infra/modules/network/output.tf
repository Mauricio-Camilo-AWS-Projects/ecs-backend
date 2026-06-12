output "public1_subnet" {
    value = aws_subnet.public1
}

output "public2_subnet" {
    value = aws_subnet.public2
}

output "private1_subnet" {
    value = aws_subnet.private1
}

output "rds_subnet" {
    value = aws_subnet.rds1
}

output "internet_gateway" {
  value = aws_internet_gateway.gw
}