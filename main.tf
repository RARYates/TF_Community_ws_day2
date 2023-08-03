locals {   
    prefix = "contoso"
    region = "UK South"
    tags = {
        cost_center = "contoso research"
    }
}

# Specifiy the provider and version
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~>3.34.0"
        }
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
}

# Create the very first resource
resource "azurerm_resource_group" "contoso_rg" {
    name     = "${local.prefix}_rg_rary"
    location = local.region
    tags     = local.tags
}

resource "azurerm_resource_group" "contoso_dev_rg" {
    name     = "${local.prefix}_rg_dev_rary"
    location = local.region
    tags     = local.tags
}