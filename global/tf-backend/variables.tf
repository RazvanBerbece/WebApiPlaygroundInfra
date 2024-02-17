variable "tfstate-rg-name" {
  description = "The name of the resource group for the Web API Playground infrastructure backend state"
  type        = string
  default     = "global-rg-tfstate"
}

variable "tfstate-rg-location" {
  description = "The location of the the Web API Playground infrastructure backend state"
  type        = string
  default     = "West Europe"
}

variable "tfstate-storage-account-name" {
  description = "The name of the storage account which will contain the Terraform state backend"
  type        = string
  default     = "apitfstatestoreacct"
}