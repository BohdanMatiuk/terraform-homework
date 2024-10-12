provider aws {
    region = "us-east-2"
} 
resource "aws_key_pair" "deployer" {
  key_name   = "bastion_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-bohdanm"
 }
 resource "aws_s3_bucket" "example2" {
  bucket_prefix = "kaizen-"
 }

  
  
  resource "aws_s3_bucket" "example3" {
  bucket = "manually1"
 }
 resource "aws_s3_bucket" "example4" {
  bucket = "manually2"
 }
 #terraform import aws_s3_bucket.example3 manually1
 #terraform import aws_s3_bucket.example4 manually2

 resource "aws_iam_user" "lb" {
  for_each = toset(["jenny", "rose", "lisa", "jisoo"])
  name = each.value
}

 resource "aws_iam_group" "developers" {
  name = "blackpink"
}
 
 
 resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    for i in aws_iam_user.lb : i.name
  ]

  group = aws_iam_group.developers.name
}

