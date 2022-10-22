variable "region" {
  type = string
  description = "this is the region of the subnet"
  default = "us-east-1"
}
variable "cidr_block" {
  type = string 
  description = "This is the cidr_block of the vpc "
  default = "10.10.0.0/16"
}
variable "subnet_tf" {
    type = list(string)
    description = "This is a string of names of the subnets"
  
}
variable "zone"{
    type = list(string)
    description = "This is a string of list of available zone of the subnet"
}