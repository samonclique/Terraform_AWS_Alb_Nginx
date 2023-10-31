# Define a VPC with a CIDR block of 10.0.0.0/16
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "terraform-vpc"
  }
}

# Define a public subnet with a CIDR block of 10.0.1.0/24
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnets[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-1"
  }
}

# Define a private subnet with a CIDR block of 10.0.4.0/24
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_subnets[0]
  tags = {
    Name = "private-subnet-1"
  }
}

# Define an internet gateway and attach it to the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "internet-gateway"
  }
}

# Define an elastic IP address for the NAT gateway
resource "aws_eip" "eip" {
  domain = "vpc" #vpc = true
}

# Define a NAT gateway and associate it with a public subnet and an elastic IP address
resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = "nat-gateway"
  }
}
