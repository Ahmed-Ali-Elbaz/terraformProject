
# Create ec2(bastion) in public subnet with security group from 7

resource "aws_instance" "bastion" {
  ami           = var.img_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.pub-sub01.id
  availability_zone = var.availability_zone_a
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.bastion_pubkey.key_name

  tags = {
    Name = "bastion"
  }

  provisioner "local-exec" {

    command= "echo ${self.public_ip}"
    
  }

}


resource "aws_key_pair" "bastion_pubkey" {
  
  key_name = "bastionkey"
  public_key = file("~/.ssh/bastionkey.pub")

}




# Create ec2 [1] (application) in private-sub01 with security group from 8

resource "aws_instance" "app01" {
  ami           = var.img_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private-sub01.id
  availability_zone = var.availability_zone_a
  vpc_security_group_ids = [aws_security_group.allow_ssh_port_3000.id]
  key_name = aws_key_pair.app01_pubkey.key_name

  tags = {
    Name = "app01"
  }
}


resource "aws_key_pair" "app01_pubkey" {
  
  key_name = "app01_pubkey"
  public_key = file("~/.ssh/appkey.pub")

}




# Create ec2 [2] (application) in private-sub02 with security group from 8

resource "aws_instance" "app02" {
  ami           = var.img_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private-sub02.id
  availability_zone = var.availability_zone_b
  vpc_security_group_ids = [aws_security_group.allow_ssh_port_3000.id]
  key_name = aws_key_pair.app02_pubkey.key_name

  tags = {
    Name = "app02"
  }
}


resource "aws_key_pair" "app02_pubkey" {
  
  key_name = "app02_pubkey"
  public_key = file("~/.ssh/appkey.pub")

}