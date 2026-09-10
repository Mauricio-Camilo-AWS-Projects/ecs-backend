# resource "aws_security_group" "test_1" {
#   name   = "terraform-partial-test"
#   vpc_id = aws_vpc.main.id

#   depends_on = [aws_security_group.test_2]
# }

# resource "aws_security_group" "test_2" {
#   name   = "terraform-partial-test"
#   vpc_id = aws_vpc.main.id

#   depends_on = [aws_security_group.test_1]
# }

# resource "aws_security_group" "test_3" {
#   name   = "terraform-partial-test-3"
#   vpc_id = aws_vpc.main.id

#   depends_on = [aws_security_group.test_2]
# }
