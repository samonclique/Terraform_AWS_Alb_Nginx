Terraform_AWS_Alb_Nginx

This is a Terraform project that creates a secure VPC environment in AWS where an EC2 instance is running an Nginx web server. The EC2 instance resides within a private subnet and is accessible to the outside world via a load balancer. Traffic to the EC2 instance is routed through a NAT gateway.

How to deploy the infrastructure

To deploy the infrastructure using this project, you need to have Terraform installed on your machine and have an AWS account with sufficient permissions.

You also need to have a key pair created in AWS and specify its name in the variables.tf file.

Then, follow these steps:

Clone this repository to your local machine:

git clone https://github.com/samonclique/terraform_aws_alb_nginx.git


#Change directory to the project folder: 

cd terraform_aws_alb_nginx


Initialize Terraform and download the required plugins and modules: terraform init

Plan and review the changes that Terraform will make to your infrastructure: terraform plan

Apply the changes and confirm when prompted: 

terraform apply

Wait for Terraform to finish creating the resources and output the Load Balancer’s DNS name.


Assumptions made This project makes the following assumptions:

You have a key pair created in AWS and its name is specified in the variables.tf file.

You want to use the us-east-1 region by default. 
You can change this in the variables.tf file or the terraform.tfvars file.

You want to use the 10.0.0.0/16 CIDR block for your VPC and the 10.0.x.0/24 CIDR blocks for your subnets. 

You can change these in the variables.tf file or the terraform.tfvars file.

You want to use a t2.micro instance type for your EC2 instance.

You can change this in the ec2.tf file.

You want to use an Ubuntu 18.04 LTS AMI for your EC2 instance. 

You can change this in the ec2.tf file.

You want to use an Application Load Balancer (ALB) for your load balancer. 

You can change this in the alb.tf file.

You want to allow SSH and HTTP traffic from anywhere to your EC2 instance and load balancer. 

You can change this in the ec2.tf and alb.tf files.

Steps to validate the setup To validate the setup, you can do the following:

Copy the Load Balancer’s DNS name from the Terraform output and paste it in your browser. 

You should see a web page that says “Hello from Terraform”.

SSH into your EC2 instance using its private IP address and the key pair that you specified.

You should be able to access the instance and see that Nginx is running.

Check the security groups and network ACLs that are attached to your resources and verify that they match your expectations.
