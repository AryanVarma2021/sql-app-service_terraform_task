data "azurerm_key_vault" "key_vault" {

  name                = var.key_vault_name
  resource_group_name = var.key_vault_rg_name


}

resource "azurerm_resource_group" "rg" {

    name     = local.rg_name
    location = var.location
    
    tags = var.tags
  
}

module "sql" {

  source = "./modules/sql"
  tags = var.tags

  sql_server_name = local.sql_server_name
  location        = var.location
  resource_group  = azurerm_resource_group.rg.name


  sql_server_version  = var.sql_server_version
  administrator_login = var.sql_username

  sql_db_sku_name = var.sql_db_sku_name

  mssql_firewall_rule_name = var.firewall_rule_name_app_service

  allow_ip_firewall_rule_name = var.firewall_rule_name_ip_address

  allow_ip_address = var.allowed_ip_address

  sql_db_name = local.sql_db_name

  sql_password_name = local.sql_pass_name

  key_vault_id = data.azurerm_key_vault.key_vault.id






}




module "webapp" {
  source = "./modules/webapp"

  service_plan_name = local.asp_name
  location          = var.location
  resource_group    = azurerm_resource_group.rg.name

  os_type = var.os_type

  service_plan_sku_name = var.service_plan_sku_name

  web_app_name          = local.app_name
  sql_connection_string = module.sql.connection_string

  tags = var.tags




}