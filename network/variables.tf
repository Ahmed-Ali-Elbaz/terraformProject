### Module inputs

variable "region_name" {
  
  type = string
  default = "us-east-1"

}


variable "default_vpc_cidr" {
  
  type = string 

}

variable "default_vpc_name" {
  
  type = string 

}

variable "availability_zone_a" {
  
  type = string 

}

variable "availability_zone_b" {
  
  type = string 

}

variable "internet_gw_name" {
  
  type = string 

}

variable "nat_gw_name" {
  
  type = string 

}

variable "img_id" {
  
  type = string
  default = "ami-09d3b3274b6c5d4aa"

}

variable "instance_type" {
  
  type = string
  default = "t2.micro"

}
