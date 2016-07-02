FROM jk/hadoop

ENV NAMENODE_DIR=/hadoop/dfs/name
RUN mkdir -p $NAMENODE_DIR

VOLUME $NAMENODE_DIR

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
