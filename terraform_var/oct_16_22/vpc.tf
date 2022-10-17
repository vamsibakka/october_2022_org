resource "aws_vpc" "vpc_tf"{
    cidr_block = "10.10.0.0/16"
    tags = {
        Name = "vpc_terraform"
    }
}
resource "aws_subnet" "subnet1"{
    vpc_id = aws_vpc.vpc_tf.id  # This is the implicite  dependency
    cidr_block ="10.10.0.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "subnet1tf"
    }

depends_on =  [
    aws_subnet.vpc_tf  # This is the explicite dependency where it depends on the resource mentionsed "vpc_tf" for its creation.unless the resource is created the "subnet1" resource will not be created.
]
}
resource "aws_subnet" "subnet2"{
    vpc_id = aws_vpc.vpc_tf.id  # This is the implicite dependency
    cidr_block ="10.10.1.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "subnet2tf"
    }

depends_on = [
     aws_subnet.subnet1 # This is explicite dependency,this subnet2 will be created after the creation of subnet1 .
]
}

resource "aws_subnet" "subnet3"{
    vpc_id = aws_vpc.vpc_tf.id # This is the implicite dependency
    cidr_block = "10.10.2.0/24"
    availability_zone ="us-west-2c"
    tags = {
        Name = "subnet3tf"
    }

depends_on = [
    aws_subnet.subnet2 
]
}

resource "aws_subnet" "subnet4"{
    vpd_id = aws_vpc.vpc_tf.id #This is the implicite dependency
    cidr_block ="10.10.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "subnet4tf"
    }

depends_on =[
    aws_subnet.subnet3 # This is the explicite dependency,this subent4 will be created after the creation of subnet 3
]
}
resource "aws_subnet" "subnet5"{
    vpd_id = aws_vpc.vpc_tf.id #This is the implicite dependency
    cidr_block = "10.10.4.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "subnet5tf"
    }

depends_on =  [
    aws_subnet.subnet4  #This is the explicite dependency,this subnet 5 will be created after the creation of subnet 4 .
]
}
resource "aws_subnet" "subnet6"{
    vpd_id = aws_vpc.vpc_tf.id #This is the implicite dependency
    cidr_block ="10.10.5.0/24"
    availability_zone = "us-west-2c"
    tags = {
        Name = "subnet6tf"
    }

depends_on = [
    aws_subnet.subnet5  # This is the explicite dependency, this subnet 6 will be created after the creation of subnet 5.
]
}