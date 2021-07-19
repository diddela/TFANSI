provider "aws" {
    access_key = "xxxxxx"
    secret_key = "xxxxxx"
    region = "ap-south-1"
}

resource "aws_instance" "my_first_machine" {
    ami = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
}