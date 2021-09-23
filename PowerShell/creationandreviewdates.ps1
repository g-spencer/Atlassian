[CmdletBinding()]
param (
    [string] [Parameter(Mandatory = $true)]
    $creationDateTime,
    [string] [Parameter(Mandatory = $true)]
    $monthsToAdd
)

try {
    # Get the current date and time.
    $convertedDateTime = [Datetime]::ParseExact($creationDateTime, 'dd/MM/yyyy HH:mm', $null)

    # Add the specified number of months.
    $reviewDateTime = $convertedDateTime.AddMonths($monthsToAdd)

    # Calculate the date values.
    $creationDate = (Get-Date -Date $convertedDateTime -UFormat %Y-%m-%dT%TZ).ToString()
    $creationEpoch = ([math]::Round((Get-Date -Date $convertedDateTime -UFormat %s), 0)).ToString()
    $reviewDate = (Get-Date -Date $reviewDateTime -UFormat %Y-%m-%dT%TZ).ToString()
    $reviewEpoch = ([math]::Round((Get-Date -Date $reviewDateTime -UFormat %s), 0)).ToString()

    # Output values back to Azure DevOps.
    Write-Host ('##vso[task.setvariable variable=creationDate;]' + $creationDate)
    Write-Host ('##vso[task.setvariable variable=creationEpoch;]' + $creationEpoch)
    Write-Host ('##vso[task.setvariable variable=reviewDate;]' + $reviewDate)
    Write-Host ('##vso[task.setvariable variable=reviewEpoch;]' + $reviewEpoch)
}
catch {
    Write-Host $_.Exception.ToString()
    throw
}
