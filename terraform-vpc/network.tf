resource "aws_internet_gateway" "test_igw" {
  vpc_id = aws_vpc.testing_vpc.id
  tags = {
    Name = "test_igw"
  }
}

resource "aws_route_table_association" "testing-1" {
  subnet_id      = aws_subnet.testing-1.id
  route_table_id = aws_route_table.testing-1.id
}

resource "aws_route_table" "testing_route" {
  vpc_id = aws_vpc.testing_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test_igw.id
  }
  tags = {
    Name = "testing_route"
  }
}
