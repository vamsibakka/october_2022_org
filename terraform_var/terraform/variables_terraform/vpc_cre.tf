resource "aws_vpc" "vpc_terraform" {
    cidr_block = var.vpc_cidrrange
    tags = {
    "Name" = "vpc_terraform"
    }
}