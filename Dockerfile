FROM openjdk:7u211-jdk-slim

RUN  \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y vim wget curl git

RUN wget --no-check-certificate https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar -xvf apache-maven-3.6.3-bin.tar.gz
RUN mv apache-maven-3.6.3 /opt/

ENV M2_HOME='/opt/apache-maven-3.6.3'
ENV PATH="$M2_HOME/bin:$PATH"

CMD ["/bin/bash"]
