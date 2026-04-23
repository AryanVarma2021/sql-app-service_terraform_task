variable "sql_server_name" {
  type        = string
  description = "Name of the SQL Server"


}

variable "location" {
  type        = string
  description = "Location of the SQL Server"

}

variable "sql_server_version" {
  type        = string
  description = "Version of the SQL Server"

}

variable "resource_group" {
  type        = string
  description = "Name of the resource group where the SQL Server will be created"

}

variable "administrator_login" {
  type        = string
  description = "Administrator login for the SQL Server"

}

variable "sql_db_name" {
  type        = string
  description = "Name of the SQL Database"

}


variable "sql_db_sku_name" {
  type        = string
  description = "SKU name for the SQL Database"

}

variable "mssql_firewall_rule_name" {
  type        = string
  description = "Name of the firewall rule to allow Azure services"

}

variable "allow_ip_firewall_rule_name" {
  type        = string
  description = "Name of the firewall rule to allow specific IP address"

}

variable "allow_ip_address" {
  type        = string
  description = "IP address to allow through the firewall"

}

variable "key_vault_id" {
  type        = string
  description = "ID of the Key Vault where secrets will be stored"

}

variable "sql_password_name" {
  type        = string
  description = "Name of the secret in Key Vault to store SQL Server password"

}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"

}