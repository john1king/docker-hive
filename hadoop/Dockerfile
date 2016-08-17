FROM jk/jdk

# SSH 免密码登录
RUN apt-get install -y openssh-server
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
ADD conf/ssh_config /root/.ssh/config

ENV HADOOP_VERSION 2.7.2


COPY hadoop-$HADOOP_VERSION.tar.gz /tmp/hadoop.tar.gz
RUN tar -xvf /tmp/hadoop.tar.gz -C /opt/ && rm /tmp/hadoop.tar.gz

ENV HADOOP_HOME=/opt/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

ADD conf/core-site.xml $HADOOP_CONF_DIR/core-site.xml
ADD conf/hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
ADD conf/mapred-site.xml $HADOOP_CONF_DIR/mapred-site.xml
ADD conf/yarn-site.xml $HADOOP_CONF_DIR/yarn-site.xml
ADD conf/slaves $HADOOP_CONF_DIR/slaves

RUN sed -i s@JAVA_HOME=\$\{JAVA_HOME\}@JAVA_HOME=${JAVA_HOME}@ $HADOOP_CONF_DIR/hadoop-env.sh

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
