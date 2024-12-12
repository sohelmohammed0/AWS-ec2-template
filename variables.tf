variable "region" {
  description = "AWS region to deploy the instances"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instances"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for SSH access"
}

variable "allowed_ssh_ips" {
  description = "List of IPs allowed to SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 1
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "allocate_eips" {
  description = "Allocate Elastic IPs for instances"
  type        = bool
  default     = false
}

variable "ssh_user" {
  description = "The SSH username for connecting to the EC2 instance"
  type        = string
  default     = "ubuntu"  # Default for Ubuntu AMI
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Terraform EC2"
}
