# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create incremental instance:
resource "aws_instance" "apache_instance" {
  count         = var.instance_data.count
  ami           = var.instance_data.ami
  instance_type = var.instance_data.type
  tags = {
    Name  = "web_server_${count.index}"
  }
}

output "public_ip_0" {
  value = aws_instance.apache_instance[0].public_ip
}

output "public_ip_1" {
  value = aws_instance.apache_instance[1].public_ip
}

output "public_ip" {
  value = aws_instance.apache_instance.*.public_ip
}


