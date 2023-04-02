variable "vpc_id" {
  type = string
}
variable "image_id" {
  type = string
}
variable "ports" {
  type = list(any)
}
variable "instance_type" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "keypair_name" {
  type = string
}
