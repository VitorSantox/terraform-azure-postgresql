# Credenciais Azure
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Service Principal Client ID"
}

variable "client_secret" {
  type        = string
  description = "Service Principal Client Secret"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

# Parâmetros do Resource Group
variable "resource_group_name" {
  type        = string
  description = "Nome do Resource Group"
}

variable "location" {
  type        = string
  description = "Região do Azure"
  default     = "eastus"
}

# Parâmetros da Storage Account
variable "storage_account_name" {
  type        = string
  description = "Nome da Storage Account"
}

variable "storage_account_tier" {
  type        = string
  description = "Tier da Storage Account"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Tipo de replicação"
  default     = "LRS"
}
