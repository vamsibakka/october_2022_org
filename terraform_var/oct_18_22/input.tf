resource "aws_vpc" "vnet" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = "vpctf"
  }
}
