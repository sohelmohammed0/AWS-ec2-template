# Security Group
resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg-"
  description = "Security group for EC2 instances"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_ips
  }

  ingress {
    description = "Allow HTTP"
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
    Name = "EC2 Security Group"
  }
}

# EC2 Instances
resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.ec2_sg.name]

  tags = merge(
    {
      Name = "${var.instance_name}-${count.index + 1}"
    },
    var.tags
  )
}

# # Elastic IPs (Optional)
# resource "aws_eip" "ec2_eip" {
#   count    = var.allocate_eips ? var.instance_count : 0
#   instance = aws_instance.ec2[count.index].id
# }
