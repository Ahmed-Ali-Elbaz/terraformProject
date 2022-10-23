
# Allow SSH from 0.0.0.0/0
resource "aws_security_group" "allow_ssh" {
  name        = "sec-grp-1"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "SSH from 0.0.0.0/0"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

}



# Allow SSH from 0.0.0.0/0
resource "aws_security_group" "allow_ssh_port_3000" {
  name        = "sec-grp-2"
  description = "Allow ssh and tcp on port 3000 from vpc cidr only"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "SSH from vpc cidr only"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]

  }

  ingress {
    description      = "TCP from vpc cidr only"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }


}