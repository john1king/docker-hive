#! /usr/bin/env bash


docker rm $(docker ps -a -q)

mkdir -p /hadoop/dfs/name
mkdir -p /hadoop/dfs/data1

docker run -d -v /hadoop/dfs/data1:/hadoop/dfs/data --net=hadoop --name=hadoop-slave1 --hostname=hadoop-slave1 jk/datanode
docker run -d -v /hadoop/dfs/name:/hadoop/dfs/name -p 50070:50070 -p 8088:8088 --net=hadoop --name=hadoop-master --hostname=hadoop-master jk/namenode
