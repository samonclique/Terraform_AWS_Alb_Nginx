# Define the region where you want to create the VPC
variable "region" {
  type        = string
  description = "The AWS region where the VPC will be created"
  default     = "us-east-1"
}

# Define the CIDR block for the VPC
variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

#Define the the instace type
variable "instance_type" {
  type        = string
  description = "The name of the type of instance"
  default     = "t2.micro"
}

#Define the ami to use for the instance
variable "ami" {
  type        = string
  description = "The AMI ID to use for this instance"
  default     = "ami-0c94855ba95c573a8"
}

# Define the key pair name for SSH access
variable "key_pair_name" {
  type        = string
  description = "The name of the key pair for SSH access"
  default     = "my-key-pair"
}

# Define the CIDR blocks for the public subnets
variable "public_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# Define the CIDR blocks for the private subnets
variable "private_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the private subnets"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

# Define the CIDR blocks that are allowed to access the EC2 instance and load balancer
variable "allowed_ips" {
  type        = list(string)
  description = "The CIDR blocks that are allowed to access the EC2 instance and load balancer"
  default     = ["0.0.0.0/0"]
}


# Define the ec2 tag Name
variable "Name" {
  type        = string
  description = "The ec2 Name"
  default     = "ec2-Nginx"
}
