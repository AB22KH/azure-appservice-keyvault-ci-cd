variable "RESOURCE_GROUP_NAME" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "LOCATION" {
  description = "Azure Region for Deployment"
  type        = string
}

variable "WEB_APP_NAME" {
  description = "Name of the Azure Web App"
  type        = string
}

variable "KEYVAULT_NAME" {
  description = "Name of the Azure Key Vault"
  type        = string
}
