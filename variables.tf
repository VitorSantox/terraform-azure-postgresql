variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-tf-test"
}

variable "location" {
  description = "Região do Azure"
  type        = string
  default     = "eastus"
}

variable "name" {
  description = "Nome do servidor PostgreSQL Flexible"
  type        = string
  default     = "psqlflex-tf-test"
}

variable "administrator_login" {
  description = "Usuário administrador do PostgreSQL"
  type        = string
  default     = "psqladmin"
}

variable "administrator_password" {
  description = "Senha do administrador do PostgreSQL"
  type        = string
  default     = "P@ssword1234!"
  sensitive   = true
}

variable "allow_azure_services" {
  description = "Se true, cria regra de firewall para permitir acesso de qualquer serviço do Azure"
  type        = bool
  default     = true
}
