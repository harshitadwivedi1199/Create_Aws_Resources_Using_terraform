resource "aws_key_pair" "key" {
  key_name   = var.keypair_name
  public_key = file("${path.module}/id_rsa.pub")
}