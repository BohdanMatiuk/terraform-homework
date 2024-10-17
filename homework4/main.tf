provider aws {
    region = var.region
}

resource "aws_key_pair" "homework" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_instance" "homework" {
  ami           = var.ami_id
  instance_type = var.instance_size
  key_name = aws_key_pair.homework.key_name
  availability_zone = var.availability_zone
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  count = var.c0unt
}
  