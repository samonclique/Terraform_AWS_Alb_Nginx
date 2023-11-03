# Module for creating the VPC and subnets
module "vpc" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   vpc_cidr              = module.vpc.vpc_cidr
  #   public_subnet_cidr    = module.vpc.public_subnet_cidr
  #   private_subnet_cidr_1 = module.vpc.private_subnet_cidr
}

# Module for creating the Internet gateway and routes
module "igw" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # vpc_id           = "${module.vpc.vpc_id}"
  # public_subnet_id = "${module.vpc.public_subnet_id}"
}

# Module for creating the NAT gateway and routes
module "natgw" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   vpc_id            = module.vpc.vpc_id
  #   public_subnet_id  = module.vpc.public_subnet_id
  #   private_subnet_id = module.vpc.private_subnet_id
}
