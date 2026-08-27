# Without this resource, ECS cannot reach a running state. 
resource "aws_cloudwatch_log_group" "ecs_logs" {
        name              = "/ecs/aws-bootcamp"
        retention_in_days = 7
}