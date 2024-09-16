provider "aws" {
  region = var.region
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MainInternetGateway"
  }
}

##

terraform {
  backend "s3" {
    bucket         = "slaiferterraform"      # Replace with your S3 bucket name
    key            = "stateterraform/terraform.tfstate"   # Path where the state file will be stored in the bucket
    region         = "us-west-2"               # The region where your bucket is located
    dynamodb_table = "slaifer-terraform-table"        # Replace with your DynamoDB table name
    encrypt        = true                          # Ensure the state file is encrypted at rest
  }
}

# Create VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "main_vpc"
  }
}

# Create Subnet
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone = var.zone
  tags = {
    Name = "main_subnet"
  }
}

# Create a route table
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MainRouteTable"
  }
}

# Create a default route to the Internet Gateway
resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

# Associate the route table with the subnet
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.main.id
}

# Create Security Group
resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web_sg"
  }
}

# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id
  key_name      = var.key_name
  availability_zone = var.zone
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "WebServerInstance"
  }
}