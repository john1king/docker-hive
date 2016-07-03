#! /bin/bash

wget http://$APACHE_MIRROR/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz -O hadoop/hadoop-2.7.2.tar.gz
wget http://$APACHE_MIRROR/hive/hive-1.2.1/apache-hive-1.2.1-bin.tar.gz -O hive/hive-1.2.1-bin.tar.gz
wget http://cdn.mysql.com/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz -O hive/mysql-connector-java-5.1.39.tar.gz
tar xzf hive/mysql-connector-java-5.1.39.tar.gz -C hive
mv hive/mysql-connector-java-5.1.39/mysql-connector-java-5.1.39-bin.jar hive/
rm -rf  hive/mysql-connector-java-5.1.39/
