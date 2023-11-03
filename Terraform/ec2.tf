# Module for creating the EC2 instance
module "ec2" {
  source = "./modules"
  ami_id = "${lookup(var.AMI, var.REGION)}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_pair_name}"
  private_subnet_id = "${module.vpc.private_subnet_id}"

# Using user_data to bootstrap the EC2 instance with Nginx
  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install nginx -y
    sudo service nginx start
    echo "Hello from Terraform" | sudo tee /var/www/html/index.html
  EOF

  tags = {
    Name = "${var.Name}"
  }
  }
