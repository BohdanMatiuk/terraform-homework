terraform {
  backend "s3" {
    bucket = "my-hw5"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-tfstate-file"
  }
}