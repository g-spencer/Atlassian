locals {
  # Map to lookup short version of environment variable
  shortEnvironment = {
    prod    = "p",
    staging = "s",
    uat     = "u",
    qa      = "q",
    dev     = "d",
    core    = "c",
    lab     = "l"
  }

  # Map to lookup region version of location variable
  region = {
    uksouth    = "uks",
    westeurope = "weu"
  }

  # Map to lookup short version of location variable
  shortLocation = {
    uksouth    = "ks",
    westeurope = "we",
  }

  # Map to lookup subscription ID from the environment name
  subscriptionId = {
    core    = "0f37b4fc-5013-4553-a833-9797887a94f6",
    qa      = "2baea48b-824e-4c2d-86d9-8f8b5cde2823",
    staging = "71d16a13-b3a2-4298-897a-f0f305e51e30",
    prod    = "936ddc0f-5833-4c64-8e52-9b2116bf5e83",
    uat     = "6fa74885-ca5f-43b4-beb3-5cb70040b56d",
    dev     = "fda8e93c-02fb-4f3d-ae28-aa02e143cc1c",
    lab     = "4c38d1bd-e034-4ee2-a23e-88a2691959c1"
  }

  # Create the VM names
  vmName = [
    "${var.fixedServiceName}-${local.shortEnvironment[var.environment]}${local.shortLocation[var.location[0]]}-${var.role1}${var.vmNumerics[0]}",
    "${var.fixedServiceName}-${local.shortEnvironment[var.environment]}${local.shortLocation[var.location[0]]}-${var.role1}${var.vmNumerics[1]}",
    "${var.fixedServiceName}-${local.shortEnvironment[var.environment]}${local.shortLocation[var.location[0]]}-${var.role1}${var.vmNumerics[2]}",
  ]

  # Recovery Vault Details
  recoveryServicesRGName = [
    "${var.recoveryServicesRGPrefix}-${var.environment}-${local.region[var.location[0]]}-rg-${var.recoveryServicesRGNumber}",
  ]
  
  recoveryVaultName = [
    "${var.recoveryVaultNamePrefix}-${var.environment}-${local.region[var.location[0]]}-${var.recoveryVaultNameNumber}",
  ]

  # Create the tags map that will be applied to all resources
  tags = {
    costCode       = var.costCode,
    dates          = "\"creationDate\":\"${var.creationDate}\",\"reviewDate\":\"${var.reviewDate}\"",
    dependsOn      = var.dependsOn,
    enables        = var.enables,
    environment    = var.environment,
    operatingTimes = "\"days\":${var.operatingDays},\"onTime\":\"${var.operatingOnTime}\",\"offTime\":\"${var.operatingOffTime}\"",
    owners         = "\"businessOwner\":\"${var.businessOwner}\",\"technicalOwner\":\"${var.technicalOwner}\"",
    priority       = var.priority,
    runningPattern = var.runningPattern,
    serviceDetails = "\"serviceName\":\"${var.serviceName}\",\"release\":\"${var.serviceRelease}\",\"releaseURL\":\"${var.serviceReleaseURL}\"",
    source         = "\"platform\":\"${var.sourcePlatform}\",\"info\":\"${var.sourceInfo}\""
  }
}
