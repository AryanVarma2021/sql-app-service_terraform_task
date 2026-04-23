resource "azurerm_service_plan" "app_service_plan" {

  name     = var.service_plan_name
  location = var.location

  resource_group_name = var.resource_group

  os_type = var.os_type

  sku_name = var.service_plan_sku_name

  tags = var.tags


}


resource "azurerm_linux_web_app" "linux_app" {

  name     = var.web_app_name
  location = var.location

  service_plan_id     = azurerm_service_plan.app_service_plan.id
  resource_group_name = var.resource_group

  site_config {

    application_stack {
      dotnet_version = var.dotnet_version

    }

  }


  connection_string {

    name  = "DatabaseConnection"
    type  = "SQLAzure"
    value = var.sql_connection_string
  }



  tags = var.tags




}