module "iti_network" {
  
  source = "/home/ahmed/Documents/network"
  region_name = var.region_name
  default_vpc_cidr = var.default_vpc_cidr
  default_vpc_name = var.default_vpc_name
  availability_zone_a = var.availability_zone_a
  availability_zone_b = var.availability_zone_b
  internet_gw_name = var.internet_gw_name
  nat_gw_name = var.nat_gw_name
  img_id = var.img_id
  instance_type = var.instance_type

}

