provider "aws" {
  access_key = "AKIA3DQAL6I2O6UC3MVS"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_security_group" "AWSSG" {
  name        = "sg for kubernetes master and worker nodes"
  description = "sg for kubernetes master and worker nodes"
  vpc_id      = "vpc-03d1450aa6942b462"
  tags = {
    Name = "sg-kubernetes"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
