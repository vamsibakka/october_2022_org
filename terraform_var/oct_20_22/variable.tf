variable "region" {
  type = string
  description = "this is the region of the subnet"
}
variable "cidr_block" {
  type = string 
  description = "This is the cidr_block of the vpc "
}
variable "subnet_tf" {
    type = list(string)
    description = "This is a string of names of the subnets"
  
}
variable "zone"{
    type = list(string)
    description = "This is a string of list of available zone of the subnet"
}