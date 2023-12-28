variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "enable_logging" {
  type    = bool
  default = false
}
variable "server_port" {
  type    = list(number)
  default = [80, 443]

}