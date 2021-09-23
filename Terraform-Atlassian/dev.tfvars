# Environment variables

environment = "dev"

# Resource specific variables

subnetPrefixes = {
  uksouth = "10.86.0.136/29"
}

vmNumerics = [
  "01",
  "02",
  "03"
]

vmPrivateIpAddress = [
  "10.86.0.140",
  "10.86.0.141",
  "10.86.0.142"
]

vmSize = "Standard_D8_v4"

// https://siswiki.sis.tv:8090/display/AZURE/Monitoring
// workspaceId =
// workspaceKey =

# Recovery Services Variables

backupRequired       = false

# VMProtectionPolicy (backups)

protectionPolicyName = "Daily-VM-Backup-2300"

# Tag variables
dependsOn         = "Network"
enables           = "Confluence"
operatingDays     = "31"
operatingOffTime  = "05:00"
operatingOnTime   = "19:00"
priority          = "4"
runningPattern    = "officeHours"
serviceRelease    = "1"
serviceReleaseURL = "https://dev.azure.com/SIS-Betting/Atlassian"