# Reference resource group
data "azurerm_resource_group" "rg1" {
  name     = "${var.serviceName}-${var.environment}-${local.region[var.location[0]]}-rg-1"
}

output "id" {
  value = data.azurerm_resource_group.rg1.id
}

// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group