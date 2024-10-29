
## Author
This project is maintained by '[end-to-end Solution Architect](https://e2esolutionarchitect.com/)'. Please feel free to drop a note to som@e2eSolutionArchitect.com for any queries

## Permission
end-to-end Solution Architect forum is contributing to this repository as knowledge sharing. You are free to use and modify this.

## About the project

- Enable AKS cluster Monitoring

## Sending Data to Log Analytics Workspace
- Manual: Setup Diagnostic settings in every reources manually
- Azure Policy: Buitin policy name "Deploy - Configure diagnostic settings for Azure Kubernetes Service to Log Analytics workspace"
  - Duplicate the policy and define a custom policy with custom changes from this Built-In policy
  - Select Scope
  - Select Log Analytics Workspace
  - Add resource selector where resource type might be 'All' or specifically any such as Microsoft.KubernetesConfiguration/namespaces,Microsoft.NetworkCloud/kubernetesClusters etc

Rename app_tfvars file name to as app.tfvars and then execute  the below command
```
terraform apply -var-file="dev.tfvars" -var="createdby=e2esa"
```

## Terraform project specification 
[click here](tf-spec.md)

```
terraform-docs markdown table . > tf-spec.md 
```

## Run terraform-docs to generate tf document
browse inside your Terraform project directory and run the below command 

```
terraform-docs markdown table . > tf-spec.md
```


[Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

```
# run to validate Azure CLI installation
az --version
```

## to upgrade cli 
```
az upgrade
```

Azure Provider: [Authenticating using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)

## Connect to Azure cloud from local CLI
```
# Run the below command in Azure CLI. It will open the login in the browser and ask to log in. Login with credentials. 
az login
```

***As output you will get below JSON ***
```
PS C:\Users\myuser> az login
A web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "######-####-####-####-###########",
    "id": "######-####-####-####-###########",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Pay-As-You-Go",
    "state": "Enabled",
    "tenantId": "######-####-####-####-###########",
    "user": {
      "name": "<user-id>",
      "type": "user"
    }
  }
]
```
# References:
- https://learn.microsoft.com/en-us/azure/aks/cluster-container-registry-integration?tabs=azure-cli


## Notes
- Please check the repository https://github.com/e2eSolutionArchitect/terraform
- We encourage you to contribute your knowledge with us and create a stronger IT community.


# Troubleshoot
- User does not have any required Grafana role assigned [click here](https://github.com/e2eSolutionArchitect/kubernetes/blob/main/aks/docs/User%20does%20not%20have%20any%20required%20Grafana%20role%20assigned-azure-managed-grafana.md)
- The Resource Provider was not registered [click here](https://github.com/e2eSolutionArchitect/kubernetes/blob/main/aks/docs/The%20Resource%20Provider%20was%20not%20registered.md)
