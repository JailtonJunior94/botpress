output "postgresql_connectionstring" {
  description = "Connection string for the Azure PostgreSql"
  value       = "postgres://${azurerm_postgresql_server.botpress_postgresql.administrator_login}:${nonsensitive(azurerm_postgresql_server.botpress_postgresql.administrator_login_password)}@${azurerm_postgresql_server.botpress_postgresql.fqdn}:5432/${azurerm_postgresql_database.botpress_database.name}?ssl=true"
}
