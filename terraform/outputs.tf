<<<<<<< HEAD
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.main.id
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.web_sg.id
}

=======
>>>>>>> 91e7b1b85feb11e906dccfb44d99cab8e736d575
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}
<<<<<<< HEAD
=======

output "instance_ami" {
  description = "The AMI ID used for the EC2 instance"
  value       = aws_instance.web.ami
}
>>>>>>> 91e7b1b85feb11e906dccfb44d99cab8e736d575
