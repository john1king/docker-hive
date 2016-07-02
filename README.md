
## Usage

下载 hadoop

    cd hadoop
    wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz

下载 hive

    cd hive
    wget http://apache.fayea.com/hive/hive-1.2.1/apache-hive-1.2.1-bin.tar.gz
    wget http://cdn.mysql.com/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz


创建 mysql 数据库

    ./init_database.sh


构建 image （修改 `hadoop/conf` 下的文件后也需要重新构建）

    ./build.sh

创建网络

    docker network create --driver=bridge hadoop

运行集群

    ./start.sh

可以修改 `./start.sh` 和 `slaves` 来增加节点的数量

