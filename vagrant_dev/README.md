# Dev environment sandbox. Every tool will have its own Dockerfiles

## Prerequisites: 
 - Uses Vagrant and VirtualBox
 - Download source from github
 - The box is only installed with Docker and Docker-Compose
 - ./tmp/ files in a vagrant is not under source control and so volatile files can be stored there


# Vagrant
 - Navigate to root directory where ```Vagrantfile``` is found
 - Run command ```vagrant up``` then move on to next section for starting Tomcat docker images
 - To stop vagrant box ```vagrant halt```
 - To scrub vagrant box ```vagrant destroy```
 - To display existing vagrant foxes ```vagrant global-status```

# Tomcat
 - N.B. Please note that vagrant provisioning already starts tomcat docker image
 - Login using to vagrant box ```vagrant ssh```
 - Check for running docker images ```sudo docker ps -a```
 - Then run the following commands to start the tomcat docker

    ```
    cd /vagrant/tomcat    
    sudo docker-compose up --build -d    
    sudo docker logs tomcat_jmx -f
    ```

 - Stop tomcat docker using ```sudo docker-compose down```
 
### Troubleshoot running tomcat docker image
 - After login via vagrant ssh run, to login to docker image

    ``` sudo docker exec -it tomcat_jmx bash ```

 - Youll be logged in to docker. env command returns all environment variables set. 

    ``` env ```

 - Check listening ports on the docker image or on the host 
    
    ``` netstat -plunt```

