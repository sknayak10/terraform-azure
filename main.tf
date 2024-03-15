terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "3.95.0"
        }
    }
}

provider "azurerm" {
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
    client_id       = var.client_id
    client_secret   = var.client_secret
    features {}
}

resource "azurerm_resource_group" "terraformrg" {
    name     = "terraformrg"
    location = "West India"
}

resource "azurerm_storage_account" "nayakstorage1334" {
    name                = "nayakstorage1334"
    resource_group_name = azurerm_resource_group.terraformrg.name
    location            = azurerm_resource_group.terraformrg.location
    account_tier        = "Standard"
    account_replication_type = "LRS"
    account_kind        = "StorageV2"
  
    tags = {
        enviroment = "dev"
    }
}

resource "azurerm_storage_container" "data" {
    name                  = "data"
    storage_account_name = azurerm_storage_account.nayakstorage1334.name
    container_access_type = "blob"
}
