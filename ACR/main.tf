#To create a repository in Azure Container Registry (ACR), 
#Use Terraform backend to store the .tfstate in an Azure Storage Account
terraform {
  backend "azurerm" {
    resource_group_name  = "spaceshuttlestorage-rg"
    storage_account_name = "spaceshuttlestorage"
    container_name       = "tfstate"
    key                  = "acr-terraform.tfstate"
  }
}

provider "azurerm" {
    version = "~> 2.0"
    features {}
}

resource "azurerm_resource_group" "acr_resource_group" {
  name     = "${var.name}-rg"
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = "${var.name}myacr01"
  resource_group_name = azurerm_resource_group.acr_resource_group.name
  location            = azurerm_resource_group.acr_resource_group.location
  sku                 = "Standard"
  admin_enabled       = false
}