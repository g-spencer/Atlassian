# Atlassian

Deploys the resources ready for Azure Migrate for the confluence/jira VM mkpv-grp-jirad2

Service Details

    ServiceName: atlassian
    Environment: core
    Role: ws
    Location: uksouth.
    Subnet IP Range: 10.88.0.112 /29.
    VM1 hostname: conjir-cks-ws01
    VM1 IP address: 10.88.0.116
    dev hostname: conjir-dks-ws01
    dev IP address: 10.86.0.140

Creates

    1 resource group in UK South.
    1 subnet with NSG to prevent old server access

Outputs

After applying, the following values will be returned:

    none

Notes

    VM will be migrated to the resource group using AZ MIgrate