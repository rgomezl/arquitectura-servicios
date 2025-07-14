variable "vpc_id" {
  type        = string
  description = "ID de la VPC donde se creará el Security Group"
}

variable "allowed_cidrs" {
  type        = list(string)
  description = "CIDRs permitidos para acceder al RDS (ej. IP pública o subred EC2)"
}

variable "name_prefix" {
  type        = string
  description = "Prefijo de nombre para recursos"
}