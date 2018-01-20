# Tomcat Docker (tomcat_jmx)

## Notes
 - create ```./tmp/tomcat/apps/``` under vagrant. Drop any *.war files in this directory to load into tomcat docker container
 - The container ```tomcat_jmx``` exposes a path ```/mnt/tomcat/apps```
 - The vagrant file maps that path to ```/vagrant/tmp/tomcat/apps```, which is accessible outside the box
 - The vagrant file also forwards all the ports exposed by jmxdocker 
 - docker container name ```tomcat_jmx``` with available commands:
    ```
    sudo docker tomcat_jmx stop
    sudo docker logs tomcat_jmx -f
    sudo docker exec -it tomcat_jmx bash
    ```
 - N.B Refer to Vagrantfile and Dockerfile for the ports exposed to the host


