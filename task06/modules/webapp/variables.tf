variable "service_plan_name" {

  type        = string
  description = "name of the app service plan"

}

variable "service_plan_sku_name" {
  type        = string
  description = "sku name for the app service plan"

}

variable "web_app_name" {
  type        = string
  description = "name of the web app"

}

variable "os_type" {
  type        = string
  description = "operating system type for the app service plan"

}


variable "location" {
  type        = string
  description = "location of the resource to be deployed"

}

variable "resource_group" {
  type        = string
  description = "name of the resource group where the web app will be created"

}

variable "sql_connection_string" {
  type        = string
  description = "connection string for the SQL Database"

}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"

}

