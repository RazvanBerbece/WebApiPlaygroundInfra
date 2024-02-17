variable "acr-rg-name" {
  description = "The name of the resource group for the Web API Playground ACR"
  type        = string
  default     = "global-rg-acr"
}

variable "acr-rg-location" {
  description = "The location of the the Web API Playground ACR"
  type        = string
  default     = "West Europe"
}
