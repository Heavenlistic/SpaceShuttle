1. Using the template https://github.com/thomast1906/DevOps-The-Hard-Way-Azure to deploy resources in Azure using terraform

2. Create the file "create-azure-storage.sh" and run the bash script which automatically creates the backend Resource group, the storage account and the backend container to store the state file

3. Create the file "create-azure-ad-group.sh" and run the bash script which automatically creates the active directory group 

4. Create individual folders for ACR, VNET, Log-Analytics, AKS

5. Use terraform to create a repository in Azure Container Registry (ACR), the Azure Vitual Network (VNET), the Log Analytics workspace, an AKS cluster and IAM Role/Policy for AKS.

6. Create touch .gitignore file and add all the files which will not be uploaded




# Commands in the terminal for main folder path
1. touch create-azure-storage.sh create-azure-ad-group.sh
2. bash create-azure-storage.sh create-azure-ad-group.sh
3. terraform init > terraform plan > terraform apply > terraform destroy
4. (delete all previous .git folders to avoid error)
5. git init > git add .gitignore > git status > git commit -m git commit -m "Initial push"
6.  git remote add origin (git link) 
    git branch -M main 
    git push -u origin main
7. git add . 