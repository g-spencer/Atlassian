resource "azurerm_virtual_machine_extension" "vm1_oms" {
  name                 = "OMSExtension"
  virtual_machine_id   = data.azurerm_virtual_machine.vm1.id
  publisher            = "Microsoft.EnterpriseCloud.Monitoring"
  type                 = "OmsAgentForLinux"
  type_handler_version = "1.13"

  settings = <<SETTINGS
      {
          "workspaceId" : "${var.workspaceId}"
      }
  SETTINGS

    protected_settings = <<PROTECTED_SETTINGS
      {
          "workspaceKey" :  "${var.workspaceKey}"
      }
  PROTECTED_SETTINGS
  
  tags      =  local.tags
}

resource "azurerm_virtual_machine_extension" "vm1_gc" {
  name                  = "AzurePolicyforLinux"
  virtual_machine_id    = data.azurerm_virtual_machine.vm1.id
  publisher             = "Microsoft.GuestConfiguration"
  type                  = "ConfigurationforLinux"
  type_handler_version  = "1.0"

  timeouts {
    create = "60m"
    delete = "2h"
  }
}

// https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/guest-configuration
