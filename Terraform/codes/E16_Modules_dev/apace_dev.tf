module "dev_apache" {
  source       = "/vagrant/devops/terraform-workspace/E16_modules/ec2"
  ami_id       = "ami-052c08d70def0ac62"
  instance_type = "t2.micro"
  zone = "ap-south-1a"
  instance_tag = { name = "dev_https" }
}

module "dev_apache_ebs" {
  source      = "/vagrant/devops/terraform-workspace/E16_modules/ebs"
  volume_name = "dev_apache_vol"
  volume_size = 1
  volume_drive = "/dev/sdd"
  instance_id = module.dev_apache.instance_id
}

