provider "aws" {
profile = "default"
region  = "us-east-1"
}

resource "aws_instance" "master_server" {
ami           = "ami-09cd747c78a9add63"
instance_type = "t3.medium"
key_name   = "DevopsOne"
tags = {
Name = "k8_mater"
}
}
resource "aws_instance" "worker1_server" {
ami           = "ami-09cd747c78a9add63"
instance_type = "t2.micro"
key_name   = "DevopsOne"
tags = {
Name = "worker1"
}
}
resource "aws_instance" "worker2_server" {
ami           = "ami-09cd747c78a9add63"
instance_type = "t2.micro"
key_name   = "DevopsOne"
tags = {
Name = "worker2"
}
}

