 Create AWS EC2 Instance Using Terraform

1. Create terraform.tfvars file with this content and provide value for each key

region = ""
availability_zone = ""
ami_id = ""

example
    region = "us-east-1"
    availability_zone = "us-east-1a"
    ami_id = "ami-06b21ccaeff8cd686"

2. Run 'terraform init' to initialize terraform
3. Run 'terraform apply' to launch instance