resource "azurerm_postgresql_flexible_server" "main" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password
  sku_name                      = "B_Standard_B1ms"
  version                       = "13"
  storage_mb                    = 32768
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  zone                          = "1"
  public_network_access_enabled = true
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_azure_services" {
  count            = var.allow_azure_services ? 1 : 0
  name             = "allow-azure-services"
  server_id        = azurerm_postgresql_flexible_server.main.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

output "fqdn" {
  value = azurerm_postgresql_flexible_server.main.fqdn
}

