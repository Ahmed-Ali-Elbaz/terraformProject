resource "aws_nat_gateway" "my-nat-gateway" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.pub-sub01.id

  tags = {
    Name = "my-nat-gateway"
  }

  depends_on = [aws_internet_gateway.my-internet-gateway]
}

