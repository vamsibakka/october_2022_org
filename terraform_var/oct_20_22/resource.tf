resource "aws_vpc" "vnet" {
    cidr_block = var.cidr_block
    tags = {
        "Name" = "vpctf_count"
    }
}
resource "vpc_subnet" "subnets" {
    count = length(subnet_tf)
    vpc_id = aws_vpc.vnet.id
    cidr_block = cidrsubnet(var.cidr_block,4,count.index)
    availability_zone = var.zone[count.index]
    tagsv= {
        "Name" = "var.subnet_tf[count.index]"
    }
    depends_on = [
      aws_vpc.vnet
    ]

}