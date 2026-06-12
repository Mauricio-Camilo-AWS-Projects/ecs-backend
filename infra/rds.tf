# resource "aws_db_instance" "default" {
#   allocated_storage      = 20
#   identifier            = "aws-bootcamp-db"
#   db_name                = "awsbootcamp"
#   engine                 = "postgres"
#   engine_version         = "14.15"
#   instance_class         = "db.t3.micro"
#   username               = "postgres"
#   password               = "Mauricio8126705*"
#   skip_final_snapshot    = true
#   publicly_accessible    = true
#   storage_type           = "gp2"
#   db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
#   vpc_security_group_ids = [aws_security_group.rds_sg.id]
# }

# # subnet group for rds -> list of subnets to use
# resource "aws_db_subnet_group" "rds_subnet_group" {
#   name       = "aws-bootcamp-db"
#   subnet_ids = [aws_subnet.public1.id, aws_subnet.public2.id]
# }
