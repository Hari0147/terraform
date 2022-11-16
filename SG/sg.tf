provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "AWSSG" {
  name        = "SecurityGroupbyterraform"
  description = "Allow ssh and port 80"
  vpc_id      = "vpc-03d1450aa6942b462"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SGbyTerraform"
  }
}
