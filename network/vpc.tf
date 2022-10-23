resource "aws_vpc" "myvpc" {
  cidr_block       = var.default_vpc_cidr

  tags = {
    Name = var.default_vpc_name
  }
}

