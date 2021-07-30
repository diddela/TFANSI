# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create instance:
resource "aws_instance" "apache_instance" {
  for_each = toset(var.instance_data.name)
  ami           = var.instance_data.ami
  instance_type = var.instance_data.type
  tags = {
    Name  = each.value
  }
}
