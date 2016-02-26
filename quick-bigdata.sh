#!/bin/bash

echo $ZK_HOME
$ZK_HOME/bin/zkServer.sh --config $ZK_HOME/conf start

echo $KAFKA_HOME
# TODO: to deamon
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties
