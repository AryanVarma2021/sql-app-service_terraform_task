resource "random_password" "sql_password_generator" {

  length  = 16
  special = true
}


resource "azurerm_mssql_server" "sql_server" {

  name                = var.sql_server_name
  location            = var.location
  resource_group_name = var.resource_group
  version             = var.sql_server_version

  administrator_login          = var.administrator_login
  administrator_login_password = random_password.sql_password_generator.result




  tags = var.tags





}

resource "azurerm_mssql_firewall_rule" "allow_azure_services" {
  name             = var.mssql_firewall_rule_name
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"




}

resource "azurerm_mssql_firewall_rule" "allow-ip" {
  name             = var.allow_ip_firewall_rule_name
  server_id        = azurerm_mssql_server.sql_server.id
  start_ip_address = var.allow_ip_address
  end_ip_address   = var.allow_ip_address

}

resource "azurerm_mssql_database" "sql_db" {

  name      = var.sql_db_name
  server_id = azurerm_mssql_server.sql_server.id
  sku_name  = var.sql_db_sku_name


  tags = var.tags





}


resource "azurerm_key_vault_secret" "sql_username" {
  name = var.sql_server_name

  value = var.sql_server_name

  key_vault_id = var.key_vault_id

  tags = var.tags

}

resource "azurerm_key_vault_secret" "sql_password" {
  name = var.sql_password_name

  value = random_password.sql_password_generator.result

  key_vault_id = var.key_vault_id

  tags = var.tags
}