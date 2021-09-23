[CmdletBinding()]
param (
    [string] [Parameter(Mandatory = $true)]
    $keyVaultName,

    [string] [Parameter(Mandatory = $true)]
    $storageAccountName,

    [string] [Parameter(Mandatory = $true)]
    $sasTokenName,

    [string] [Parameter(Mandatory = $true)]
    $stateContainerName
)

try {
    $secretValue = (Get-AzKeyVaultSecret -VaultName $keyVaultName -Name $sasTokenName).SecretValue
    $sasToken = '';
    $ssPtr = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secretValue)
    try {
        $sasToken = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR($ssPtr)
    } finally {
        [System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ssPtr)
    }

    $stateContainerName = $stateContainerName.ToLower()

    $storageContext = New-AzStorageContext -StorageAccountName $storageAccountName -SasToken $sasToken -ErrorAction Stop

    try {
        $existingContainer = Get-AzStorageContainer -Context $storageContext -Name $stateContainerName -ErrorAction Stop
    }
    catch {
        $existingContainer = ''

    }
    
    if ($existingContainer) {
        Write-Output -InputObject ('Container ' + $stateContainerName + ' already exists in storage account ' + $storageAccountName + '.')
    }
    else {
        $null = New-AzStorageContainer -Name $stateContainerName -Context $storageContext -ErrorAction Stop
        Write-Output -InputObject ('Container ' + $stateContainerName + ' created in storage account ' + $storageAccountName + '.')
    }
}
catch {
    Write-Host $_.Exception.ToString()
    throw
}
