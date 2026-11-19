resource "aws_instance" "maxpayne_app" {
  ami           = "ami-0639df93102b03fec"
  instance_type = "t3.micro"
  key_name      = "mykeypair"
  tags = {
    Name = "maxpayne-app"
  }
  vpc_security_group_ids = [aws_security_group.maxpayne_app_sg.id]

}