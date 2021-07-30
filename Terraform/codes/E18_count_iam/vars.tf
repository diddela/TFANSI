# Region
variable AWS_REGION {
  default     = "ap-south-1"
}

# Create users
variable users {
  default = ["lb001", "lb002", "lb003"]
}

# Create groups 
variable group {
  default = "adminstrator"
}
