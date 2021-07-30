# Provider :
provider "aws" {
    region = var.AWS_REGION
}

# Create new users :
resource "aws_iam_user" "lb_users" {
    for_each = toset(var.users)
    name = each.value
}

#output "all_users" {
#  value = aws_iam_user.lb_users
#}

#output "all_users" {
# value = values(aws_iam_user.lb_users).*.name
#}
