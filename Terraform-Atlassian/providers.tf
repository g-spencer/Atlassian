# Set up AzureRM provider (tenant/subscription ID now set using environment variables in pipelines.)

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.77.0"
//      version = "~>2.46.1"     # # ~ is the 'pessimistic evaluator', only allowing version increments to the minor version
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs