resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.ec2_count

  tags = {
    Name = "${var.env}-EC2-${count.index}"
    Env = var.env
  }
}