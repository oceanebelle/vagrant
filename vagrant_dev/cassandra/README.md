# Cassandra

## Run cassandra scripts using cqlsh. 
N.B Please note the host from prompt
    
    ```bash
    (host     )$  vagrant ssh 
    (vagrant  )$  sudo cp /vagrant/cassandra/* /mnt/cassandra/scripts/
    (vagrant  )$  sudo docker exec -it cassandra bash
    (cassandra)$  cd /var/lib/cassandra/scripts
    (cassandra)$  cqlsh -f <scriptname>.cql
    ```

    