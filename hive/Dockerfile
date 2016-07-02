FROM jk/hadoop


ENV HIVE_VERSION 1.2.1

COPY apache-hive-$HIVE_VERSION-bin.tar.gz /tmp/hive.tar.gz

RUN tar -xzvf /tmp/hive.tar.gz -C /opt && \
  mv /opt/apache-hive-$HIVE_VERSION-bin /opt/hive-$HIVE_VERSION && \
  rm /tmp/hive.tar.gz

ENV HIVE_HOME /opt/hive-$HIVE_VERSION
ENV PATH $PATH:$HIVE_HOME/bin

Add mysql-connector-java-5.1.39-bin.jar $HIVE_HOME/lib
ADD conf/hive-site.xml $HIVE_HOME/conf

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 10000
EXPOSE 10002

CMD ["/run.sh"]
