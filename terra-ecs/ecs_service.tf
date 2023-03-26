resource "aws_ecs_service" "express_service" {
    name = "express-service"
    cluster = aws_ecs_cluster.express_cluster.arn
    task_definition = aws_ecs_task_definition.express_task_definition.arn
    launch_type = "FARGATE"
    desired_count = 1


    network_configuration {
        security_groups = [aws_security_group.express_security_group.id]
        subnets = ["subnet-04f44679c0b85d91e","subnet-086de1de5fde71d59"]
        assign_public_ip = true
    }

}

resource "aws_security_group" "express_security_group" {
    name_prefix = "express-sg"
    vpc_id= "vpc-0bf168604dc074cc9"

    ingress {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }
}
