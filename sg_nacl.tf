# Define a security group for the EC2 instance that allows SSH and HTTP traffic from the allowed IPs
resource "aws_security_group" "ec2_sg" {
  name   = "ec2-sg"
  vpc_id = aws_vpc.vpc.id

  # Allow SSH traffic from the allowed IPs
  ingress {
    from_port   = 22 # SSH port
    to_port     = 22 # SSH port
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  # Allow HTTP traffic from the allowed IPs
  ingress {
    from_port   = 80 # HTTP port
    to_port     = 80 # HTTP port
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-sg"
  }
}


# Define a security group for the ALB that allows HTTP traffic from anywhere
resource "aws_security_group" "alb_sg" {
  name   = "alb-sg"
  vpc_id = aws_vpc.vpc.id

  # Allow HTTP traffic from anywhere
  ingress {
    from_port   = 80 # HTTP port
    to_port     = 80 # HTTP port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alb-sg"
  }
}

# Define a network ACL for the public subnet that allows HTTP and HTTPS traffic from anywhere and denies all other inbound traffic
resource "aws_network_acl" "public_nacl" {
  vpc_id     = aws_vpc.vpc.id
  subnet_ids = [aws_subnet.public_subnet.id]

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80 # HTTP port
    to_port    = 80 # HTTP port
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443 # HTTPS port
    to_port    = 443 # HTTPS port
  }

  ingress {
    protocol   = "-1"
    rule_no    = 102
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "public-nacl"
  }
}

