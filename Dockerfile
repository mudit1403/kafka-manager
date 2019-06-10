FROM docker.phonepe.com:5000/pp-ops-xenial:0.6

ENV ZK_HOSTS=${ZK_CONNECTION_STRING}

RUN sbt clean dist

EXPOSE 9000

ENTRYPOINT ["bin/kafka-manager","-Dconfig.file=conf/application.conf"]