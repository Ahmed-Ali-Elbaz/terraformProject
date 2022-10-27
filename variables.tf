# Region Variable
variable "region_name" {
  
  type = string
  default = "us-east-1"
  description = "region name"

}



# VPC Variables
variable "default_vpc_name" {
  
  type = string
  default = "Project-vpc"
  description = "vpc name"

}

variable "default_vpc_cidr" {
  
  type = string
  default = "10.0.0.0/16"
  description = "vpc cidr"

}



# Gateways Variables
variable "internet_gw_name" {
  
  type = string
  default = "my-internet-gateway"
  description = "internet-gateway"

}

variable "nat_gw_name" {
  
  type = string
  default = "my-nat-gateway"
  description = "nat-gateway"

}



# Instances Variables
variable "img_id" {
  
  type = string
  default = "ami-09d3b3274b6c5d4aa"
  description = "ec2-img"

}


variable "instance_type" {
  
  type = string
  default = "t2.micro"
  description = "ec2-type"

}




# Availability zones Variables
variable "availability_zone_a" {
  type = string
  default = "us-east-1a"
}

variable "availability_zone_b" {
  type = string
  default = "us-east-1b"
}

