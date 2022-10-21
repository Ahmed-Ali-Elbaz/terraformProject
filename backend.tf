terraform {
  backend "s3" {
    bucket = "mybucket0362"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table  = "dynamodb-state-locking"  # to lock state file
  }
  
}
