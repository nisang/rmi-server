FROM java:7u79-jre

RUN mkdir /rmi-server

COPY rmi-server.zip /rmi-server

EXPOSE 1199
