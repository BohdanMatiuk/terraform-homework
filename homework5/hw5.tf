provider aws {
    region = var.region
}


variable region {
  default = ""
}
variable instance_type {
  default = "t2.micro"
}

resource "aws_key_pair" "hw5" {
  key_name   = "hw5-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.hw5.key_name
  user_data = file("apache2.sh")
}


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}