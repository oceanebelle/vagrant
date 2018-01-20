Dev environment where all dev tools reside.

TOMCAT Docker file found at: https://hub.docker.com/r/bitnami/tomcat/

Starting docker image in vagrant host: 
 - Login using ```vagrant ssh```
 - Then run the following commands to start the tomcat docker

    ```
    cd /vagrant/tomcat
    sudo docker-compose up --build -d
    sudo docker ps -a
    sudo docker logs <name>
    ```

 - Stop tomcat docker using ```sudo docker-compose down```
 
Troubleshoot running docker image
 - After login via vagrant ssh run, to login to docker image

    ``` sudo docker exec -it <name> bash ```

 - Youll be logged in to docker. env command returns all environment variables set. 

    ``` env ```

 - Check listening ports on the docker image or on the host 
    
    ``` netstat -plunt```

