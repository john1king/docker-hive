FROM jk/hadoop

ENV DATANODE_DIR=/hadoop/dfs/data
RUN mkdir -p $DATANODE_DIR

VOLUME $DATANODE_DIR

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
