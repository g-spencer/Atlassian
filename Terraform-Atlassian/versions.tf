# Backend setup for Terraform remote state
terraform {
  required_version = ">=1.2.2"
//  required_version = "~>0.15"   # ~ is the 'pessimistic evaluator', only allowing version increments to the minor version

  backend "azurerm" {
  }
}

// https://releases.hashicorp.com/terraform/