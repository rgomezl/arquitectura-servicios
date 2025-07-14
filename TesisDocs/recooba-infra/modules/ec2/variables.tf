variable "vpc_id" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "key_name" {
  description = "Nombre del par de claves EC2"
  type        = string
}
variable "allowed_ssh_cidrs" {
  type = list(string)
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "name_prefix" {
  type = string
}