# Module for creating the EC2 instance
module "ec2" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # ami_id            = lookup(var.AMI, var.REGION)
  # instance_type     = var.instance_type
  # key_name          = var.key_pair_name
  # private_subnet_id = "${module.vpc.private_subnet_id}"
}
