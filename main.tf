terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.95.0"
        }
    }
}

provider "azurerm" {
    subscription_id = "b6dd00d4-fc52-41c2-b5a6-0e293ab559a0"
    tenant_id = "7b79a728-7d9f-439a-b5e1-1c429d711480"
    client_id = "19a8b347-a972-4488-bfdf-c7ca2aee1708"
    client_secret = "ssT8Q~OgcCVSgi1pxwgL18OwDlAEo~-GwpolxaeB"
    features {}
}
resource "azurerm_resource_group" "terraformrg" {
  name     = "terraformrg"
  location = "West India"
}
