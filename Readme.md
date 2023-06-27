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
7. git add . > git commit -m "Second push" > git push (to additional changes with updated comments) 

# Docker & Kubernetes Commands
1. cd into the Docker directory to see a Dockerfile and app directory, to create the Docker image, run the command:
docker build -t uberapp .

2. # to confirm the Docker image is on the machine
docker image ls

3. # To run the Docker container, run the command: 
docker run -tid uberapp

4. # To confirm the Docker container is running, run the command: 
docker container ls

5. # To log in to ACR Repository with Azure CLI 
az acr login --name spaceshuttlemyacr01

6. # To tag the Docker image
docker tag uberapp spaceshuttlemyacr01.azurecr.io/uberapp:v1

7. # To push the Docker image to ACR
docker push spaceshuttlemyacr01.azurecr.io/uberapp:v1

8. # To connect to AKS: 
az aks get-credentials --resource-group spaceshuttle-rg --name spaceshuttleaks --admin

9. # To check the current context and user
kubectl config current-context

10. # To confirm connection: 
kubectl get nodes

11. # To create The Kubernetes Manifest
change the image URL on line 31 in deployment.yml (Kubernetes Manifest folder) to spaceshuttlemyacr01.azurecr.io/uberapp:v1

12. # To deploy The Uber App
cd kubernetes_manifest directory > kubectl create -f deployment.yml

13. # To confirm deployment was successful: 
kubectl get deployments

14. # To access uber-ui via Application Gateway 
kubectl get ingress

15. # To check if the controller pods is running or not
kubectl get pods

16. # To check the endpoints in the service> Copy & paste the LoadBalancer Ingress to view the app
kubectl describe service uber-ui  

17. # To set up authentication from GitHub to Azure
az ad sp create-for-rbac --name spaceshuttle