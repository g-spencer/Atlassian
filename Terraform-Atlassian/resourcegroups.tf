# Create a resource group
resource "azurerm_resource_group" "rg1" {
  name     = "${var.serviceName}-${var.environment}-${local.region[var.location[0]]}-rg-1"
  location = var.location[0]
  tags     = local.tags
}