resource "aws_route" "Pub-route" {
  route_table_id            = aws_route_table.pub-route-table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-internet-gateway.id
  depends_on                = [aws_route_table.pub-route-table]
}


resource "aws_route" "Private-route" {
  route_table_id            = aws_route_table.private-route-table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.my-nat-gateway.id
  depends_on                = [aws_route_table.private-route-table]
}
