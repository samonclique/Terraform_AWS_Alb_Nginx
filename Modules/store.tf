# Store the VPC ID as a parameter
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/terraform/vpc/id"
  type  = "String"
  value = aws_vpc.vpc.id
}

# Store the EC2 instance ID as a parameter
resource "aws_ssm_parameter" "ec2_id" {
  name  = "/terraform/ec2/id"
  type  = "String"
  value = aws_instance.ec2.id
}

# Store the EC2 instance private IP as a parameter
resource "aws_ssm_parameter" "ec2_private_ip" {
  name  = "/terraform/ec2/private_ip"
  type  = "String"
  value = aws_instance.ec2.private_ip
}

# Store the security group ID of the ec2 as a parameter
resource "aws_ssm_parameter" "ec2_sg_id" {
  name  = "/terraform/ec2/sg_id"
  type  = "String"
  value = aws_security_group.ec2_sg.id
}

# Store the Load Balancer's DNS name as a parameter
resource "aws_ssm_parameter" "lb_dns_name" {
  name  = "/terraform/lb/dns_name"
  type  = "String"
  value = aws_lb.alb.dns_name
}

# Store the security group ID of the loadbalancer  as a parameter 
resource "aws_ssm_parameter" "alb_sg_id" {
  name  = "/terraform/lb/sg_id"
  type  = "String"
  value = aws_security_group.alb_sg.id
}
