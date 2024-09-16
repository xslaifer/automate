variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "14.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "14.0.1.0/24"
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-01f519a731dd64ba7"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "automate"
}

variable "map_public_ip_on_launch" {
  description = "Whether to auto-assign public IPs to instances launched in this subnet"
  type        = bool
  default     = true
}

###