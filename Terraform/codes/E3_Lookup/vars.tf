# # Access Key
variable AWS_ACCESSKEY {
  default     = "xxxxx"
}

# Secret Key
variable AWS_SECRETKEY {
  default     = "xxxxx"
}

# Region
variable AWS_REGION {
#  default     = "us-west-1"
}

# Image IDs
variable "AMI" {
  #type        = map
  default     = {
    ap-south-1 = "ami-052c08d70def0ac62"
    us-west-1  = "ami-066df92ac6f03efca"
  }
}
