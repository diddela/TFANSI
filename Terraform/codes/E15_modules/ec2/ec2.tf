provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    availability_zone = var.zone
    tags = var.instance_tag
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}