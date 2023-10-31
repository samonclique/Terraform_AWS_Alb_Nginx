# Output the VPC ID
output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The ID of the VPC"
}

# Output the EC2 instance ID
output "ec2_id" {
  value       = aws_instance.ec2.id
  description = "The ID of the EC2 instance"
}

# Output the EC2 instance private IP
output "ec2_private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "The private IP address of the EC2 instance"
}

# Output the Load Balancer's DNS name
output "lb_dns_name" {
  value       = aws_lb.alb.dns_name
  description = "The DNS name of the Load Balancer"
}

# Output the SSH key pair name
output "key_pair_name" {
  value       = var.key_pair_name
  description = "The name of the SSH key pair"
  sensitive   = true # Prevent Terraform from showing this value in the CLI output
}

