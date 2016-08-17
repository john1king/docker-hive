FROM ubuntu:14.04

RUN sed -i "s/archive.ubuntu/mirrors.aliyun/g" /etc/apt/sources.list && apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa -y
RUN apt-get install -y openjdk-8-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
