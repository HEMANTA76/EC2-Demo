module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name ="vpc-using-terraform"
  cidr = "10.0.0/16"
  instance_tenancy = "default"
  azs = [var.az1,var.az2]
  private_subnets = ["10.0.1.0/24","10.0.2.0/24"]
  public_subnets = ["10.0.3.0/24","10.0.4.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false
  tags = {
    "vpc-module-source" = "terraform registry"
    "enviroment" ="dev"
  }

}