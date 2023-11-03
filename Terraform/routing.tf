module "private_rt" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   vpc_id         = "${module.vpc.vpc_id}"
  #   nat_gateway_id = "${module.natgw.id}"
}

module "private_rta" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   rt_id     = "${module.private_rt.id}"
  #   subnet-id = "${module.private_subnet.id}"
}


module "public_rt" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   vpc_id     = "${module.vpc.vpc_id}"
  #   gateway_id = "${module.igw.id}"
}

module "public_rta" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   rt_id     = "${module.public_rt.id}"
  #   subnet-id = "${module.public_subnet.id}"
}
    