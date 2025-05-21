# Variables
RESOURCE_GROUP=tfstate-rg
STORAGE_ACCOUNT=tfstate123456
CONTAINER_NAME=tfstate

# 1. Create Resource Group
az group create --name $RESOURCE_GROUP --location "Central US"

# 2. Create Storage Account (must be globally unique)
az storage account create \
  --name $STORAGE_ACCOUNT \
  --resource-group $RESOURCE_GROUP \
  --location "Central US" \
  --sku Standard_LRS

# 3. Create Blob Container for state files
az storage container create \
  --name $CONTAINER_NAME \
  --account-name $STORAGE_ACCOUNT
