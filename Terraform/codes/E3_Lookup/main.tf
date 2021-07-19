resource "aws_instance" "ec2_instance" {
    ami = lookup (var.AMI, var.AWS_REGION)
    instance_type = "t2.micro"
}
    
  