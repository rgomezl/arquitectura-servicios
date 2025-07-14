output "rds_endpoint" {
  value = aws_db_instance.mariadb.endpoint
}

output "rds_id" {
  value = aws_db_instance.mariadb.id
}