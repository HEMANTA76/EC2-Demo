variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "enable_logging" {
  type    = bool
  default = false
}
variable "server_port" {
  type    = list(number)
  default = [80, 443]

}