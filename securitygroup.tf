resource "aws_security_group" "maxpayne_app_sg" {
  name        = "maxpayne-app-sg"
  description = "security group for maxpayne application"
  vpc_id      = "vpc-0be45eacf55ecb896"
}

resource "aws_security_group_rule" "maxpayne_ssh_rule" {
  type              = "ingress"
  description       = "ssh access"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.maxpayne_app_sg.id
}

resource "aws_security_group_rule" "maxpayne_http_rule" {
  type              = "ingress"
  description       = "http access"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.maxpayne_app_sg.id
}

resource "aws_security_group_rule" "maxpayne_outbound_rule" {
  type              = "egress"
  description       = "outbound access"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.maxpayne_app_sg.id
}