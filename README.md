# Description
Dockerized version of Cronicle with kubernetes Support. 
Cronicle makes scheduling and managing cron jobs easy with UI.
Cronicle Project/Application Link: https://github.com/jhuckaby/Cronicle

# How to use 
Consist of Base Dockerfile(Dockerfile.base) and main DockerFile. Dockerfile.base install the python Dependencies You can update it to add more libraries.
requirements.txt file consit of most of data scient related libraries, its commented out in dockerfile.base
Update the CI yml file and you are good to Go.
Consist of k8s Folder having yaml file for Kubernetes. 
