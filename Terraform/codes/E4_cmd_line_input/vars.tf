# Access Key
variable AWS_ACCESSKEY {
  default     = "xxxxxx"
}

# Secret Key
variable AWS_SECRETKEY {
  default     = "xxxxxx"
}

# Region
variable AWS_REGION {}

# Image IDs
variable "AMI" {
  type        = map
  default     = {
    ap-south-1 = "ami-052c08d70def0ac62"
    us-west-1  = "ami-066df92ac6f03efca"
  }
}

