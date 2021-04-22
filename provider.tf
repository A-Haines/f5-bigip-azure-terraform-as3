#################################################################################
# PROVIDER NEEDED IF NOT USING AZURE CLI THAT HAS ALREADY BEEN AUTHENTICATED 
#################################################################################

# Need to create a service principle in the Azure subscription for this to work
# FROM CLI: az ad sp create-for-rbac --name="TerraformSP" --role="Contributor" --scopes="/subscriptions/<subID>"
# This results in an application ID, client secret, and tenant ID that can be used below for login:

terraform {
  required_providers {
    bigip = {
      source  = "F5Networks/bigip"
      version = "1.8.0"
    }
  }
}

provider "bigip" {
  address  = var.address
  username = var.username
  password = var.password
}