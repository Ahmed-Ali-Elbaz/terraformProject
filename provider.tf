# Configure the AWS Provider
provider "aws" {
  region = var.region_name
  profile = "default"   # Account profile name
}

