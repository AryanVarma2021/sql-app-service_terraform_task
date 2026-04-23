variable "key_vault_name" {
  type        = string
  description = "Name of the Key Vault where the SQL Server credentials are stored"

}

variable "key_vault_rg_name" {
  type        = string
  description = "Name of the resource group where the Key Vault is located"

}





variable "name_prefix" {
  type        = string
  description = "Prefix for the names of the resources to be created"

}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}

variable "location" {
  type        = string
  description = "location of the resource to be deployed"

}

variable "sql_server_version" {
  type        = string
  description = "sql server version "

}

variable "sql_username" {
  type        = string
  description = "user name of the sql server"

}

variable "firewall_rule_name_app_service" {

  type        = string
  description = "firewall rule name for allow app service to access the sql"

}

variable "firewall_rule_name_ip_address" {
  type        = string
  description = "firewall rule name for allow ip address"

}

variable "allowed_ip_address" {
  type        = string
  description = "allowed ip address to access the sql server"

}

variable "sql_db_sku_name" {
  type        = string
  description = "sku name for db"

}


variable "os_type" {
  type        = string
  description = "operating system type for the app service plan"

}

variable "service_plan_sku_name" {
  type        = string
  description = "sku name for the app service plan"

}

variable "dotnet_version" {
  type        = string
  description = "version of dotnet for the web app"

}



