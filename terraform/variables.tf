<<<<<<< HEAD
variable "region" {
  description = "The AWS region to create resources in"
=======
variable "aws_region" {
  description = "The AWS region to deploy resources in"
>>>>>>> 91e7b1b85feb11e906dccfb44d99cab8e736d575
  type        = string
  default     = "us-west-2"
}

<<<<<<< HEAD
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
=======
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Example AMI ID, change to your preferred AMI
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
>>>>>>> 91e7b1b85feb11e906dccfb44d99cab8e736d575
  type        = string
  default     = "t2.micro"
}

<<<<<<< HEAD
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
=======
variable "instance_name" {
  description = "The name to tag the EC2 instance with"
  type        = string
  default     = "MyEC2Instance"
}

# Optionally, define variables for security groups, key pairs, etc.
variable "key_name" {
   description = "The key pair to use for SSH access"
   type        = string
   default     = "my-key-pairautomate"
 }
>>>>>>> 91e7b1b85feb11e906dccfb44d99cab8e736d575
