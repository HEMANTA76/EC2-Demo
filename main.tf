provider "aws" {
  region = var.aws_region
}
data "aws_availability_zones" "region_available_zones" {
  state = "available"
}

module "vpc_with_tf_registry" {
  source = "./vpc"
  az1 = data.aws_availability_zones.region_available_zones.names[0]
  az2 = data.aws_availability_zones.region_available_zones.names[1]
}