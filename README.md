Deployment of Azure Resourses using Terraform

##Settting up PC/MAC for the first time:

#For windows

1. install Terraform from below link
https://developer.hashicorp.com/terraform/install#windows

2. install azure CLI from below link

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

#For Mac

1. install HomeBrew first buy running below commands:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install wget

2. install Terraform running below command:

brew tap hashicorp/tap
brew install hashicorp/tap/terraform

3. install and check Azure ClI on MAC:

brew install azure-cli

az --version

## login to Azure (Mac/PC)

az login

Notes: 
1. create a new user in Entra ID, give global admin, then under properties enable "Access   management for Azure resources" . Go to subscription under IAM give Owner access.
2. storage account name should be unique, hence always use dynamic condition for storage account name assignment and while referring to it
