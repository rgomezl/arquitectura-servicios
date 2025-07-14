variable "vpc_cidr" {
  type        = string
  description = "CIDR de la VPC"
}

variable "public_subnet_cidr_a" {
  type        = string
  description = "CIDR para la subred pública A"
}

variable "public_subnet_cidr_b" {
  type        = string
  description = "CIDR para la subred pública B"
}

variable "az_a" {
  type        = string
  description = "Zona de disponibilidad A"
}

variable "az_b" {
  type        = string
  description = "Zona de disponibilidad B"
}

variable "name_prefix" {
  type        = string
  description = "Prefijo de nombre para recursos"
}