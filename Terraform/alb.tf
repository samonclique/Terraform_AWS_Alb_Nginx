module "alb" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # vpc_id           = "${module.vpc.vpc_id}"
  # public_subnet_id = "${module.vpc.public_subnet_id}"
  # ec2_id           = "${module.ec2.ec2_id}"
}



module "tg" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # target_group_name = "${module.tg.name}"
  # port              = "${module.tg.port}"
  # protocol          = "${module.tg.protocol}"
  # vpc_id            = "${module.vpc.vpc_id}"
  # healthcheck_path  = "${module.tg.health_check}"
}


module "listener" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  #   listener_arn     = "${module.listener.listener_arn}"
  #   default_action   = "${module.listener.default_action}"
  #   rule_priority    = "${module.listener.rule_priority}"
  #   path_pattern     = "${module.listener.path_pattern}"
  #   target_group_arn = "${module.tg.target_group_arn}"
}


module "tga" {
  source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
  # action_type       = "${module.tga.action_type}"
  # load_balancer_arn = "${module.alb.load_balancer_arn}"
  # target_group_arn  = "${module.tg.target_group_arn}"
  # priority          = "${module.tga.priority}"
}
