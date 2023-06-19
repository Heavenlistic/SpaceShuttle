#!/bin/sh

RESOURCE_GROUP_NAME="spaceshuttlestorage-rg"
STORAGE_ACCOUNT_NAME="spaceshuttlestorage"

# Create Resource Group
az group create -l canadacentral -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l canadacentral --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME