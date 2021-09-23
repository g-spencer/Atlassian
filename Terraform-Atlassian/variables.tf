# Standard resource variables

variable "reverse_fqdn" {
  type        = string
  description = "A fully qualified domain name that resolves to this public IP address."
}

variable "rootsshRSAPublicKey" {
  type        = string
  description = "RSA public key for authentication."
}

variable "rootUsername" {
  type        = string
  description = "Username to be added to the VMs as an administrator."
  default     = "sisroot"
}

variable "subnetPrefixes" {
  type        = map(string)
  description = "Map containing the subnet prefix to be created in each location."
}

variable "vmImageOffer" {
  type        = string
  description = "Offer name of the VM image."
  default     = "RHEL"
}

variable "vmImagePublisher" {
  type        = string
  description = "Publisher of the VM image."
  default     = "RedHat"
}

variable "vmImageSku" {
  type        = string
  description = "Specicific VM image to be used."
  default     = "8-LVM"
}

variable "vmImageVersion" {
  type        = string
  description = "Version of the VM image to be used."
  default     = "latest"
}

variable "vmNumerics" {
  type        = list(string)
  description = "list of Numerics for the VMs being deployed, basically last two digits of vmNames"
  default     = ["01"]
}

variable "vmPrivateIpAddress" {
  type        = list(string)
  description = "List of IP addresses to be assigned to the VMs that are created."
}

variable "vmSize" {
  type        = string
  description = "Size of the virtual machines to be created."
  default     = "Standard_B2ms"
}

variable "workspaceId" {
  type  = string
  description = "Azure Log monitor workspace ID which VM will poll into"
}

variable "workspaceKey" {
  type  = string
  description = "Azure Log Monitor workspace key to auhtenticate with Workspace"
}

# Environment variables

variable "environment" {
  type        = string
  description = "Environment name. Must be prod, staging, uat, qa, dev, core or lab."
}

variable "tenantId" {
  type        = string
  description = "ID for the tenant."
  default     = "629ba906-d77e-4dc6-acf3-d71375b281ea"
}

# Recovery Services Variables

variable "backupRequired" {
  type        = bool
  description = "Set to true if a backup is required - use environment TF vars files to backup in one environment"
}

variable "protectionPolicyName" {
  type        = string
  description = "Name of the backup policy to use."
  default     = "Daily-VM-Backup-2300"
}

variable "recoveryServicesRGNumber" {
  type        = string
  description = "Number of the resource group containing the recovery services vault to back up to (single digit number)."
  default     = "1"
}

variable "recoveryServicesRGPrefix" {
  type        = string
  description = "Name of the resource group containing the recovery services vault to back up to, without region and environment."
  default     = "recoveryservices"
}

variable "recoveryVaultNameNumber" {
  type        = string
  description = "Number of the recovery services vault to back up to (two digit number)."
  default     = "01"
}

variable "recoveryVaultNamePrefix" {
  type        = string
  description = "Name of the recovery services vault to back up to use, without region and environment."
  default     = "recoveryservices-vault"
}

# Resouce Specific Variables

variable "fixedServiceName" {
  type        = string
  description = "Any unique name based on existing Service Name with a fixed length of 6 characters. Alphanumeric only."
  default     = "conjir"
}

variable "location" {
  type        = list(string)
  description = "List of locations to be used, reference in scripts by list ident."
  default     = ["uksouth"]
}

variable "protocol" {
  type        = list(string)
  description = "Protocols to be allowed by NSG. List containing any well-known name of a network protocol, or ‘TCP_port-number’, or ‘UDP_port-number’ if not well-known."
}

variable "protocolPort" {
  type        = map(string)
  description = "Map containing port numbers for the protocols to be allowed by NSG."
}

variable "role1" {
  type        = string
  description = "Server role. Must be two characters. Name appropriate to role of server, e.g. wb for a webserver, or dc for a domain controller. The name sv can be used for generic servers if no other role name is appropriate."
  default     = "ws"
}

variable "serviceName" {
  type        = string
  description = "Any unique name with a maximum of 32 characters. Alphanumeric only."
  default     = "atlassian"
}

# Tag variables

variable "businessOwner" {
  type        = string
  description = "Provides business owner of a service."
}

variable "costCode" {
  type        = string
  description = "Provides a cost code or DAR for billing and cost management purposes"
  default     = "157-11"
}

variable "creationDate" {
  type        = string
  description = "Date that a resource was created as a human readable date."
}

variable "dependsOn" {
  type        = string
  description = "Shows services that this service relies on in order to function."
  default     = "None"
}

variable "enables" {
  type        = string
  description = "Shows services that rely on this service in order to function."
  default     = "Many"
}

variable "operatingDays" {
  type        = string
  description = "7 bit number specifies which days the resource should be online and running."
  default     = "127"
}

variable "operatingOffTime" {
  type        = string
  description = "Time in format HH:mm, specifics the end of the online window for the resource."
  default     = "00:00"
}

variable "operatingOnTime" {
  type        = string
  description = "Time in format HH:mm, specifics the start of the online window for the resource."
  default     = "00:00"
}

variable "priority" {
  type        = string
  description = "A simple value to indicate the criticality of the service to company operations."
  default     = "2"
}

variable "reviewDate" {
  type        = string
  description = "Date that a resource will be reviewed on as a human readable date."
}

variable "runningPattern" {
  type        = string
  description = "Predefined values indicating when a resource should be running."
}

variable "serviceRelease" {
  type        = string
  description = "Shows release number."
}

variable "serviceReleaseURL" {
  type        = string
  description = "URL to view service release information."
}

variable "sourceInfo" {
  type        = string
  description = "URL to repository of code used to deploy the resource, or email address if method was manual."
  default     = "https://dev.azure.com/SIS-Betting/DNSSRV"
}

variable "sourcePlatform" {
  type        = string
  description = "The method that was used to deploy the resource."
  default     = "Azure DevOps"
}

variable "technicalOwner" {
  type        = string
  description = "Provides technical owner of a service."
  default     = "gspencer@sis.tv"
}
