# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create new security group :
resource "aws_security_group" "TF_SG" {
    name = "DEV SG"
    vpc_id = var.vpc["id"]

    ingress {
        description = "inbound"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.vpc["cidr"]]
        
    }

    egress {
        description = "outbound"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = [var.vpc["cidr"]]
    }
    
    tags = {
        sg_name = "dev-sg"
    }

}