# resource "aws_nat_gateway" "nat1" {
#   allocation_id = aws_eip.one.id
#   subnet_id     = module.network.public1_subnet.id

#   tags = {
#     Name = "aws-bootcamp-nat-1"
#   }

#   depends_on = [module.network.internet_gateway]
# }

# # elastic IPs

# resource "aws_eip" "one" {
#   tags = {
#     Name = "aws-bootcamp-eip-1"
#   }
# }

# # Private Route Table

# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.main.id

#   # Route to NAT Gateway 1

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.nat1.id
#   }

#   tags = {
#     Name = "aws-bootcamp-private-rtb"
#   }
# }

# resource "aws_route_table_association" "pri_1" {
#   subnet_id      = module.network.private1_subnet.id
#   route_table_id = aws_route_table.private.id
# }