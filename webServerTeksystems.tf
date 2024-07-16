# Simple webserver creation template via Terraform

provider "aws" {
    region = "us-east-1"
  }
  
  resource "aws_instance" "webServerTekSystems" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
  
    # Key Pair to access the instance
    key_name = "keyPairTekSystems"  # Make sure to replace with actual key pair name
  
    tags = {
      Name = "ApacheWebServerTekSystems"
    }
  
    user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd
                systemctl enable httpd
                echo "<html><body><h1>Built by Romel using Terraform!</h1></body></html>" > /var/www/html/index.html
                EOF
  
    vpc_security_group_ids = [aws_security_group.web-sg.id] # Security group ID goes here. 
  }
  
  resource "aws_security_group" "web-sg" {
    name_prefix = "web-sg"
  
    ingress {
      description = "Allow HTTP traffic"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  
    ingress {
      description = "Allow SSH traffic"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]  # this config would allow anyone on the web to access your server via SSH, replace this with your IP/subnet for better security
    }
  
    egress {
      description = "Allow all outbound traffic"
      from_port   = 0
      to_port     = 0
      protocol    = "-1" # this allows all outbound traffic through all protocols
      cidr_blocks = ["0.0.0.0/0"]
    }
  }