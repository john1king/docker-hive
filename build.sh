#! /usr/bin/env bash

docker build -t jk/hadoop ./hadoop
docker run -d --net=hadoop --hostname hadoop-slave1 --name hadoop-slave1 jk/datanode
docker build -t jk/datanode ./datanode
docker build -t jk/hive ./hive
