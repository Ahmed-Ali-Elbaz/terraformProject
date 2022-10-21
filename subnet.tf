
# Public-Subnet 1
resource "aws_subnet" "pub-sub01" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "pub-sub01"
  }
}

# Public-Subnet 2
resource "aws_subnet" "pub-sub02" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "pub-sub02"
  }
}


# Private-Subnet 1
resource "aws_subnet" "private-sub01" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private-sub01"
  }
}


# Private-Subnet 2
resource "aws_subnet" "private-sub02" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Private-sub02"
  }
}
