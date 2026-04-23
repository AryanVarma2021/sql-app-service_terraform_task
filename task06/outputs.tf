output "sql_server_fqdn" {
  value = module.sql.sql_server_fqdn

  description = "fully qualifies domain name"


}

output "app_hostname" {
  value       = module.webapp.app_hostname
  description = "hostname of the web app"

}