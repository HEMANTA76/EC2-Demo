 provider "aws" {
    region  = var.aws_region
 }
 resource "random_pet" "name" {}
resource "aws_instance" "web" {
  ami                    = "ami-0230bd60aa48260c6"

  instance_type          = "t2.micro"

  tags = {
    Name = random_pet.name.id
  }
}