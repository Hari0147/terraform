resource "aws_instance" "AWSEC2INSTANCE"{
  count           = var.instances
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = ["sg for kubernetes master and worker nodes"]
  key_name        = "hk1"
  tags = {
    Name = "workernode-${count.index + 1}"
  }
}
