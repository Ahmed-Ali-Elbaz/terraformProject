resource "aws_eip" "nat-eip" {
  
  depends_on = [
    aws_internet_gateway.my-internet-gateway
  ]

}