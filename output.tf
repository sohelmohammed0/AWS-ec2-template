output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i ${var.key_name}.pem ${var.ssh_user}@${aws_instance.my_ec2.public_ip}"
}

output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.my_ec2.id 
}

output "instance_public_ip" {
  description = "The public IP address of the created EC2 instance"
  value       = aws_instance.my_ec2.public_ip 
}
