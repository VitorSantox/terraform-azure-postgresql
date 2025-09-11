output "postgresql_flexible_server_fqdn" {
  value       = azurerm_postgresql_flexible_server.main.fqdn
  description = "FQDN do servidor PostgreSQL"
}

output "allow_azure_services_rule_name" {
  value       = var.allow_azure_services ? azurerm_postgresql_flexible_server_firewall_rule.allow_azure_services[0].name : null
  description = "Nome da regra de firewall que permite acesso de qualquer serviço do Azure"
}
