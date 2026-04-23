locals {

  rg_name         = join("-", [var.name_prefix, "rg"])
  sql_server_name = join("-", [var.name_prefix, "sql"])
  sql_db_name     = join("-", [var.name_prefix, "sql", "db"])
  sql_pass_name   = join("-", [var.name_prefix, "sql", "admin", "password"])
  asp_name        = join("-", [var.name_prefix, "asp"])
  app_name        = join("-", [var.name_prefix, "app"])
}