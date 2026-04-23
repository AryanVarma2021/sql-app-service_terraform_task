output "sql_server_fqdn" {

  value = azurerm_mssql_server.sql_server.fully_qualified_domain_name

}

output "sql_connection_string" {
  value     = "Server=tcp:${azurerm_mssql_server.sql_server.fully_qualified_domain_name};Database=${azurerm_mssql_database.sql_db.name};User ID=${var.administrator_login};Password=${random_password.sql_password_generator.result};"
  sensitive = true
}