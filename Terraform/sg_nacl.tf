# Module for creating the security groups
module "ec2_sg" {
  source = "./modules"
  vpc_id = "${module.vpc.vpc_id}"
  ec2_id = "${module.ec2.ec2_id}"
  }
  
#Module for load balancer security group
module "alb_sg" {
    source      = "/modules"
    name        = "${module.alb_sg.name}"
    vpc_id = "${module.vpc.vpc_id}" 
}

#module for nacl
module "public_nacl" {
    source     = "./modules"
    vpc_id     = "${module.vpc.vpc_id}"  
    subnet_ids = "${module.subnet1.private_subnet_id}"
}
