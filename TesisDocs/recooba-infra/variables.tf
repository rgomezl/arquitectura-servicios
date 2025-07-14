
variable "region" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
  sensitive = true
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "public_subnet_cidr_a" {
  type = string
}

variable "public_subnet_cidr_b" {
  type = string
}

variable "az_a" {
  type = string
}

variable "az_b" {
  type = string
}

variable "allowed_ip" {
  type = string
}
