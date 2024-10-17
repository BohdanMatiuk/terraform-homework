variable region {
    type = string
    default = "us-east-2"
}
variable key_name {
    type = string
    default = "homework-key"
}
variable port {
    type = list
    default = [22, 80, 443]
}
variable availability_zone {
    type = string
    default = "us-east-2a"
}
variable instance_size {
    type = string
    default = "t2.micro"
}
variable ami_id {
    type = string
    default = "ami-050cd642fd83388e4"
}
variable c0unt {
    type = number
    default = 1
}

