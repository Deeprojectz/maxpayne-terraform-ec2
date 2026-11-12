resource "aws_instance" "maxpayne_ec2_app" {
    ami = "ami-0639df93102b03fec"
    instance_type = "t3.micro"
    key_name = "mykeypair"
    tags = {
        name = "maxpayne-app"
    }
  
}