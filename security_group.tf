resource "aws_security_group" "sg" {
  name        = "allow_ssh_and_http"
  description = "Allow allow ssh and http"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "Allow http"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  # ingress {
  #   description      = "Allow http"
  #   from_port        = 80
  #   to_port          = 80
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]

  # }

  # ingress {
  #   description      = "Allow ssh"
  #   from_port        = 22
  #   to_port          = 22
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]

  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_http_and_ssh"
  }
}