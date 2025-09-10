resource "aws_vpc" "myvpc" {
  cidr_block       = var.vcp_cid
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az
  tags = {
    Name = "${var.env}-subnet"
  }
}

output "subnet_id" {
  value = aws_subnet.mysubnet.id
  description ="the subnet id which ec2 needs"
}