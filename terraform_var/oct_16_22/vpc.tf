resource "aws_vpc" "vpc_tf"{
    cidr_block = "10.10.0.0/16"
    tags = {
        Name = "vpc_terraform"
    }
}
resource "aws_subnet" "subnet1"{
    vpc_id = aws_vpc.vpc_tf.id  # This is the implicite 
    cidr_block ="10.10.0.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "subnet1tf"
    }
}
resource "vpc_subnet" "subnet2"{
    cidr_block ="10.10.1.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "subnet2tf"
    }
}
resource "vpc_subnet" "subnet3"{
    cidr_block = "10.10.2.0/24"
    availability_zone ="us-west-2c"
    tags = {
        Name = "subnet3tf"
    }
}
resource "vpc_subnet" "subnet4"{
    cidr_block ="10.10.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "subnet4tf"
    }
}
resource "vpc_subnet" "subnet5"{
    cidr_block = "10.10.4.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "subnet5tf"
    }
}
resource "vpc_subnet" "subnet6"{
    cidr_block ="10.10.5.0/24"
    availability_zone = "us-west-2c"
    tags = {
        Name = "subnet6tf"
    }
}