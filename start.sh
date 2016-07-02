#! /usr/bin/env bash

i=1
while [ $i -lt $N ]
do
  sudo mkdir -p /hadoop/dfs/data$i
  sudo docker rm -f hadoop-slave$i
  echo "start hadoop-slave$i ..."
  sudo docker run -d \
    -v /hadoop/dfs/data$i:/hadoop/dfs/data \
    --net=hadoop \
    --name=hadoop-slave$i \
    --hostname=hadoop-slave$i \
    jk/datanode
  i=$(( $i + 1 ))
done

sudo mkdir -p /hadoop/dfs/name
sudo docker rm -f hadoop-master
echo "start hadoop-master ..."
sudo docker run -d \
  -v /hadoop/dfs/name:/hadoop/dfs/name \
  -p 50070:50070 \
  -p 8088:8088 \
  --net=hadoop \
  --name=hadoop-master \
  --hostname=hadoop-master \
  jk/namenode
