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
 - Login using to vagrant box and run the following commands to start the tomcat docker

```bash
# from host login to vagrant vbox using ssh
(host       )$ vagrant ssh

# check if tomcat is running
(vagrant    )$ sudo docker ps -a
# navigate to where docker-compose.yml resides
(vagrant    )$ cd /vagrant/tomcat
# if running, stop tomcat
(vagrant    )$ sudo docker-compose down
# start tomcat, check logs
(vagrant    )$ sudo docker-compose up --build -d    
(vagrant    )$ sudo docker logs tomcat_jmx -f
# login to docker tomcat, run additional troubleshooting commands
(vagrant    )$ sudo docker exec -it tomcat_jmx bash

# query environment variables
(tomcat_jmx )$ env
(tomcat_jmx )$ cd /mnt/tomcat/apps
(tomcat_jmx )$ netstat -plunt
```
 
### Troubleshoot running tomcat docker image
 - After login via vagrant ssh run, to login to docker image

    ``` sudo docker exec -it tomcat_jmx bash ```

 - Youll be logged in to docker. env command returns all environment variables set. 

    ``` env ```

 - Check listening ports on the docker image or on the host 
    
    ``` netstat -plunt```

