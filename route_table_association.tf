
# Pub-table-association subnet 1
resource "aws_route_table_association" "pub-table-association1" {
  subnet_id      = aws_subnet.pub-sub01.id
  route_table_id = aws_route_table.pub-route-table.id
}

# Pub-table-association subnet 2
resource "aws_route_table_association" "pub-table-association2" {
  subnet_id      = aws_subnet.pub-sub02.id
  route_table_id = aws_route_table.pub-route-table.id
}


# Private-table-association subnet 1
resource "aws_route_table_association" "private-table-association1" {
  subnet_id      = aws_subnet.private-sub01.id
  route_table_id = aws_route_table.private-route-table.id
}

# Private-table-association subnet 2
resource "aws_route_table_association" "private-table-association2" {
  subnet_id      = aws_subnet.private-sub02.id
  route_table_id = aws_route_table.private-route-table.id
}