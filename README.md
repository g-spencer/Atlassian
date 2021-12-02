# Atlassian

Deploys the resources ready for Azure Migrate for the confluence/jira VM mkpv-grp-jirad2

Service Details

    ServiceName: atlassian
    Environment: core
    Role: ws
    Location: uksouth.
    Subnet IP Range: 10.88.0.136 /29.
    VM1 hostname: conjir-cks-ws01
    VM1 IP address: 10.88.0.140
    dev hostname: conjir-dks-ws01
    dev IP address: 10.86.0.140

Creates

    1 resource group in UK South.
    1 subnet with NSG to prevent old server access and allow public access

Outputs

After applying, the following values will be returned:

    none

Notes

    'Atlassian' pipeline prepares the groundwork for the migration, creating resource group and nic/nsg/pip.
    VM will be migrated to the resource group using AZ Migrate.
    'AtlassianPostMig' pipeline will deploy azure backup, and extensions: guest configuration and OMS agent for linux.