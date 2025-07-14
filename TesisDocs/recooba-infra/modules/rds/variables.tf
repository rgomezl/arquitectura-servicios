variable "name_prefix" {
  type        = string
  description = "Prefijo de nombre para los recursos"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Lista de subredes para el grupo de subredes RDS"
}

variable "security_group_id" {
  type        = string
  description = "ID del grupo de seguridad que permite acceso a RDS"
}

variable "db_name" {
  type        = string
  description = "Nombre de la base de datos inicial"
}

variable "db_username" {
  type        = string
  description = "Usuario administrador de la base de datos"
}

variable "db_password" {
  type        = string
  description = "Contraseña del usuario administrador"
}