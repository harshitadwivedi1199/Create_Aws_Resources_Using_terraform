provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "lanuch_ec2" {
  ami             = var.image_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  key_name        = aws_key_pair.key.key_name
  security_groups = [aws_security_group.sg.id]
  tags = {
    Name = "Test_instance"
  }
  user_data = file("${path.module}/userdata_script.sh")
  # user_data = <<EOF
  # #!/bin/bash
  # sudo yum update -y
  # sudo amazon-linux-extras install nginx1
  # sudo systemctl start nginx
  # sudo systemctl enable nginx
  # sudo chown -R ec2-user.ec2-user /usr/share/nginx/html/
  # sudo chmod   0755  /usr/share/nginx/html/
  # sudo echo "<center><h1>Hosted using terraform</h1></center>" > /usr/share/nginx/html/index.html
  # sudo systemctl restart nginx
  # EOF
}
