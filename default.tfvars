aws_region        = "ap-south-1"
ami_id            = "ami-0522ab6e1ddcc7055"
instance_type     = "t2.micro"
key_name          = "keypair"
associate_public_ip = true
# subnet_id         = "subnet-0bb1c79de3EXAMPLE"
# security_group_ids = ["sg-0bb1c79de3EXAMPLE"]
instance_name     = "My EC2"
# availability_zone = "us-east-1a"
volume_size       = 20
device_name       = "/dev/xvdf"
ssh_user      = "ubuntu"
# user_data         = <<-EOT
# #!/bin/bash
# echo "Hello, Terraform!" > /var/www/html/index.html
# EOT

