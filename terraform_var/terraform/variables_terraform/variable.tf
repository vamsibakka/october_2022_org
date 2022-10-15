variable "region_var" {
    type             = string
   # default          = "us-east-1"
    description      = "This the variable created to choose the region of aws "
}
variable "vpc_cidrrange" {
    type            = string
    #default         = "192.168.121.0/24"
    description     = "This is to select the range of cidr block in aws"
}