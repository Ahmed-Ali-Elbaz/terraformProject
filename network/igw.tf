resource "aws_internet_gateway" "my-internet-gateway" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = var.internet_gw_name
  }
}

