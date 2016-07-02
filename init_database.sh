#! /usr/bin/env bash

mkdir -p /hadoop/hive

docker rm -f init_hive_mysql

echo "run container"
docker run -d -v /hadoop/hive:/var/lib/mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=1 --name init_hive_mysql mysql

# 太早执行会导致权限初始化之后又被重置
echo "start mysql ..."
sleep 30

echo "create database"
docker exec init_hive_mysql mysql -uroot -e "create database hive"

echo "create user"
docker exec init_hive_mysql mysql -uroot -e "create user hive identified by 'password'"

echo "grant user"
docker exec init_hive_mysql mysql -uroot -e "grant all privileges on hive.* to hive@'%' identified by 'password' with grant option"

echo "check connect"
docker exec -it init_hive_mysql mysql -uhive -ppassword hive -e "select 'ok'"

echo "remove container"
docker stop init_hive_mysql
docker rm init_hive_mysql
