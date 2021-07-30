# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create EBS volume
resource "aws_ebs_volume" "addon" {
  availability_zone = "ap-south-1a"
  size              = var.volume_size
  tags = {Name = var.volume_name}
}

# Attach newly create EBS volume to instance
resource "aws_volume_attachment" "ebs_att" {
  device_name = var.volume_drive
  volume_id   = aws_ebs_volume.addon.id
  instance_id = var.instance_id
}
