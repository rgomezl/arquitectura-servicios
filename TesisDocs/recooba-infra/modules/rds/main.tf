resource "aws_db_subnet_group" "main" {
  name       = "${var.name_prefix}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name = "${var.name_prefix}-subnet-group"
  }
}

resource "aws_db_instance" "mariadb" {
  identifier              = "${var.name_prefix}-db"
  engine                  = "mariadb"
  engine_version          = "10.6"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = [var.security_group_id]
  publicly_accessible     = true
  multi_az                = false
  storage_encrypted       = false

  tags = {
    Name = "${var.name_prefix}-db"
  }
}