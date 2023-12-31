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
resource "azurerm_resource_group" "rgs" {
    count    = length(var.rg_names)
    name     = "${var.prefix}_${var.rg_names[count.index]}"
    location = var.region
    tags     = var.tags
}