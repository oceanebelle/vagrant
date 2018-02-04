# Cassandra

## Run cassandra scripts using cqlsh. 
N.B Please note the host from prompt
    
```bash
(host     )$  vagrant ssh 
(vagrant  )$  sudo cp /vagrant/cassandra/* /mnt/cassandra/scripts/

# start cassandra and check logs
(vagrant    )$ cd /vagrant/cassandra
#    for recreating the container
(vagrant    )$ sudo docker-compose up --build -d
(vagrant    )$ sudo docker logs tomcat_jmx -f

# login to cassandra docker
(vagrant  )$  sudo docker exec -it cassandra bash

# run cqlsh against cassandra
(cassandra)$  cd /var/lib/cassandra/scripts
(cassandra)$  cqlsh -f <scriptname>.cql
```

    
