resource "aws_vpc" "testing_vpc" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = "true" #gives you an internal domain name
  enable_dns_hostnames = "true" #gives you an internal host name
  instance_tenancy     = "default"

  tags = {
    Name = "testing_vpc"
  }
}

resource "aws_subnet" "testing-1" {
  vpc_id                  = aws_vpc.testing_vpc.id
  cidr_block              = "10.1.10.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "testing-1"
  }
}

resource "aws_subnet" "testing-2" {
  vpc_id                  = aws_vpc.testing_vpc.id
  cidr_block              = "10.1.20.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "testing-2"
  }
}

resource "aws_subnet" "testing-3" {
  vpc_id                  = aws_vpc.testing_vpc.id
  cidr_block              = "10.1.30.0/24"
  map_public_ip_on_launch = "true" #it makes this a public subnet
  availability_zone       = "ap-south-1c"
  tags = {
    Name = "testing-3"
  }
}
