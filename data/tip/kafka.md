# Kafka

## Usage

    $ bin/kafka-server-start.sh -daemon config/server.properties

    create topic
    $ bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic sence-datasource

    producer
    $ bin/kafka-console-producer.sh --broker-list localhost:9092 --topic sence-datasource

    consumer
    $ bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic sence-datasource --from-beginning

    groups
    $ bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group scenes-worker
