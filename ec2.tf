resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc           = var.vpc 

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
  }
}