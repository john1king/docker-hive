#! /usr/bin/env bash

docker build -t jk/hadoop ./hadoop
docker build -t jk/namenode ./namenode
docker build -t jk/datanode ./datanode
docker build -t jk/hive ./hive
