Lessons Learned: 

1. Don't use synced folders in multimachine. If you stop one of the machines the sync folders of the other machines are affected. 

2. The file provisioner only runs during provision. If you need to change some settings, then either ssh and modify the file or provision again.

Zookeeper
 - Found in /usr/share/zookeeper

 Kafka 
  - Found in /opt/Kafka


### Starting from vanilla

Create test topic with 1 partition and replication of 3

```bash
(host     )$ vagrant ssh md-kafka1
(md-kafka1)$ cd /opt/Kafka/kafka_2.11-1.0.0/bin
(md-kafka1)$ ./kafka-topics.sh --zookeeper 10.0.0.100:2181 --create --replication-factor 3 --partitions 1 --topic test
```