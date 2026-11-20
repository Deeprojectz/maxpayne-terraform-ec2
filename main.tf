resource "aws_instance" "maxpayne_app" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "maxpayne-app-${var.environment}"
  }
  vpc_security_group_ids = [aws_security_group.maxpayne_app_sg.id]

  user_data = file("user_data.sh")

}