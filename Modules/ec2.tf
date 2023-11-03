# Defining an EC2 instance that runs an Nginx web server and resides in a private subnet
resource "aws_instance" "ec2" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.private_subnet.id
  key_name        = var.key_pair_name
  security_groups = [aws_security_group.ec2_sg.id]

  # Using user_data to bootstrap the EC2 instance with Nginx
  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install nginx -y
    sudo service nginx start
    echo "Hello from Terraform" | sudo tee /var/www/html/index.html
  EOF

  tags = {
    Name = "ec2-nginx"
  }
}

