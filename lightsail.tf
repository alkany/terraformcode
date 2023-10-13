resource "aws_lightsail_instance" "example_instance" {
    name = "main-instance"
instance_plan_key = "nano_2_0"

user_data = <<-EOF
#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo echo "<h1> This server is created using Terraform </h1>" > /var/www/html/index/html
EOF
}