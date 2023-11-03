module "private_rt" {
    source = "./modules"
    vpc_id = "${module.vpc.vpc_id}" 
    nat_gateway_id = "${module.natgw.id}" 
}

module "private_rta" {
    source = "./modules"
    rt_id = "${module.private_rt.id}"
    subnet-id = "${module.private_subnet.id}"
    }


module "public_rt" {
    source = "./modules"
    vpc_id = "${module.vpc.vpc_id}" 
    gateway_id = "${module.igw.id}" 
}

module "public_rta" {
    source = "./modules"
    rt_id = "${module.public_rt.id}"
    subnet-id = "${module.public_subnet.id}"
    }
    