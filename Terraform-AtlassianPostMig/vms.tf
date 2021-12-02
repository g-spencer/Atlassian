# reference  VM1
data "azurerm_virtual_machine" "vm1" {
  name                  = local.vmName[0]
  resource_group_name   = data.azurerm_resource_group.rg1.name

}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.vm1.id
}

// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_machine