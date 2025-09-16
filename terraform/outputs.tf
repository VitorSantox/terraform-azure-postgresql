output "resource_group_name" {
  description = "Nome do Resource Group criado"
  value       = module.storage_accont.name
}

output "resource_group_location" {
  description = "Localização do Resource Group"
  value       = module.storage_accont.location
}
