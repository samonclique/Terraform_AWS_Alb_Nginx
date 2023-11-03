# Module for creating the security groups
module "ec2_sg" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # vpc_id = "${module.vpc.vpc_id}"
  # ec2_id = "${module.ec2.ec2_id}"
}

#Module for load balancer security group
module "alb_sg" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # name   = "${module.alb_sg.name}"
  # vpc_id = "${module.vpc.vpc_id}"
}

#module for nacl
module "public_nacl" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   vpc_id     = "${module.vpc.vpc_id}"
  #   subnet_ids = "${module.subnet1.private_subnet_id}"
}
