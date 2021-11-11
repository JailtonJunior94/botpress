resource "azurerm_postgresql_server" "botpress_postgresql" {
  name                = "botpress-postgresql-server"
  location            = azurerm_resource_group.botpress_rg.location
  resource_group_name = azurerm_resource_group.botpress_rg.name

  sku_name = "B_Gen5_1"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladmin"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "11"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "botpress_database" {
  name                = "botpress_db"
  resource_group_name = azurerm_resource_group.botpress_rg.name
  server_name         = azurerm_postgresql_server.botpress_postgresql.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
