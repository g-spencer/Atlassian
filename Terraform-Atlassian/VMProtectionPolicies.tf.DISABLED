data "azurerm_backup_policy_vm" "vm_protection_policy1" {
  name                = var.protectionPolicyName
  resource_group_name = local.recoveryServicesRGName[0]
  recovery_vault_name = local.recoveryVaultName[0]
  count               = var.backupRequired ? 1 : 0
}

resource "azurerm_backup_protected_vm" "protected_vm1" {
  resource_group_name = local.recoveryServicesRGName[0]
  recovery_vault_name = local.recoveryVaultName[0]
  source_vm_id        = azurerm_virtual_machine.vm1.id
  backup_policy_id    = data.azurerm_backup_policy_vm.vm_protection_policy1[count.index].id
  count               = var.backupRequired ? 1 : 0
}

resource "azurerm_backup_protected_vm" "protected_vm2" {
  resource_group_name = local.recoveryServicesRGName[0]
  recovery_vault_name = local.recoveryVaultName[0]
  source_vm_id        = azurerm_virtual_machine.vm2.id
  backup_policy_id    = data.azurerm_backup_policy_vm.vm_protection_policy1[count.index].id
  count               = var.backupRequired ? 1 : 0
}

resource "azurerm_backup_protected_vm" "protected_vm3" {
  resource_group_name = local.recoveryServicesRGName[0]
  recovery_vault_name = local.recoveryVaultName[0]
  source_vm_id        = azurerm_virtual_machine.vm3.id
  backup_policy_id    = data.azurerm_backup_policy_vm.vm_protection_policy1[count.index].id
  count               = var.backupRequired ? 1 : 0
}
