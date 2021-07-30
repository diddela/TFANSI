module "prod_apache" {
    source = "/vagrant/devops/terraform-workspace/E16_modules/ec2"
    ami_id = "ami-052c08d70def0ac62"
    instance_type = "t2.medium"
    zone = "ap-south-1b"
    instance_tag = {name = "prod_https"} 
}

module "prod_apache_ebs" {
    source = "/vagrant/devops/terraform-workspace/E16_modules/ebs"
    volume_name = "prod_apache_vol"
    volume_size = 5
    instance_id = module.prod_apache.instance_id
}