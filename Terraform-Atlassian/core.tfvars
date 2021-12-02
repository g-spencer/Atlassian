# Environment variables

environment = "core"

# Resource specific variables

subnetPrefixes = {
  uksouth = "10.88.0.136/29"
}

protocol = [
  "TCP_8090",
  "TCP_8080",
  "TCP_80"
]

protocolPort = {
  TCP_8090 = "8090",
  TCP_8080 = "8080"
  TCP_80  = "80"
}

vmNumerics = [
  "01",
  "02",
  "03"
]

vmPrivateIpAddress = [
  "10.88.0.140",
  "10.88.0.141",
  "10.88.0.142"
]

vmSize = "Standard_D4s_v4"
//vmSize = "Standard_D8_v4"

// https://siswiki.sis.tv:8090/display/AZURE/Monitoring
// workspaceId =
// workspaceKey =

# Recovery Services Variables

backupRequired       = true

# VMProtectionPolicy (backups)

protectionPolicyName = "Daily-VM-Backup-2300"

# Tag variables
dependsOn         = "Network"
enables           = "Confluence"
operatingDays     = "127"
operatingOffTime  = "00:00"
operatingOnTime   = "00:00"
priority          = "1"
runningPattern    = "alwaysOn"
serviceRelease    = "1"
serviceReleaseURL = "https://dev.azure.com/SIS-Betting/Atlassian"