#! /usr/bin/env bash

if [ "`ls -A $NAMENODE_DIR`" == "" ]; then
  echo "Formatting namenode name directory: $NAMENODE_DIR"
  $HADOOP_HOME/bin/hdfs namenode -format
fi

$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

while true; do sleep 1000; done
