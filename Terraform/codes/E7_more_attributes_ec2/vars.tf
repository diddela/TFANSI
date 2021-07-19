# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# Image IDs
variable "AMI" {
  default     = {
    ap-south-1 = "ami-052c08d70def0ac62"
    us-east-2  = "ami-0a54aef4ef3b5f881"
  }
}

# Security Group
variable "SG" {
  default     = "sg-0dd3c22f1b5261ac2"
}

