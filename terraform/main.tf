terraform{
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.1"
      }
    }
}

provider "azurerm"{
    features{}
}

resource "azurerm_resource_group" "RG" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_service_plan" "asp" {
    name = var.asp
    resource_group_name = azurerm_resource_group.RG.name
    location = azurerm_resource_group.RG.location
    os_type = "Windows"
  sku_name = "B1"
}

resource "azurerm_windows_web_app" "webapp" {
     name = var.webapp
    resource_group_name = azurerm_resource_group.RG.name
    location = azurerm_resource_group.RG.location
  service_plan_id = azurerm_service_plan.asp.id
  site_config {
    application_stack {
      current_stack = "dotnetcore"
      dotnet_version = "v8.0"
    }
  }
  }

