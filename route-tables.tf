
# Public Route table
resource "aws_route_table" "pub-route-table" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "pub-route-table"
  }
}

# Private Route table
resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "private-route-table"
  }
}