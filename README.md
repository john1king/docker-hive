
## Usage

下载 hadoop

    cd hadoop
    wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz

构建 image （修改 `hadoop/conf` 下的文件后也需要重新构建）

    ./build.sh

创建网络

    docker network create --driver=bridge hadoop

运行集群

    ./start.sh

可以修改 `./start.sh` 和 `slaves` 来增加节点的数量
