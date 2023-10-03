terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

resource "azurerm_storage_container" "example" {
  name                  = "content"
  storage_account_name  = "storageaccountnametest19"
  container_access_type = "private"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "example<>resources"
    storage_account_name = "storageaccountnametest19"
    container_name       = "content"
    key                  = "terraform.tfstate"
  }
}
