output "ssh_command" {
  description = "SSH command to connect to the instances"
  value       = "ssh -i ${var.key_name}.pem ${var.ssh_user}@${aws_instance.ec2[0].public_ip}"
}

output "instance_ids" {
  description = "IDs of the created instances"
  value       = aws_instance.ec2[*].id
}

output "public_ips" {
  description = "Public IPs of the created instances"
  value       = aws_instance.ec2[*].public_ip
}
