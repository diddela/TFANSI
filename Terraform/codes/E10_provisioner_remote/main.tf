provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "http_ec2" {
    ami = lookup (var.AMI, var.AWS_REGION)
    instance_type = "t2.micro"
    tags = {Name = "HTTP_SERVER"}
    vpc_security_group_ids = ["sg-d1cb0aae"]
    key_name = "main"

provisioner "remote-exec" {
   inline = ["sudo yum install httpd -y", "sudo service httpd start", "mkdir -p /tmp/devops"]
}

connection {
  host = self.public_ip
  user = var.login_user
  private_key = file("/vagrant/other-files/Key-files/main.pem")    
    }
}



