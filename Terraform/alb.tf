module "lb" {
    source = "/Users/samonclique/Desktop/Git/Terraform_AWS_Alb_Nginx/Modules"
    vpc_id = "${module.vpc.vpc_id}"
    public_subnet_id = "${module.vpc.public_subnet_id}"
    ec2_id = "${module.ec2.ec2_id}"
}
