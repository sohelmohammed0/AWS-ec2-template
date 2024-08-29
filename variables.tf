variable "region" {
  description = "The AWS region to create resources in"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instance"
  default     = "ami-0522ab6e1ddcc7055"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  default     = "dock.pem"
}

variable "ssh_user" {
  description = "The SSH user to connect to the instance"
  default     = "ubuntu"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Name        = "Terraform-EC2"
    Environment = "Development"
  }
}
