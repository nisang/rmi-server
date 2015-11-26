FROM java:7u79-jre

COPY rmi-server.zip /rmi-server.zip
COPY sources.list /etc/apt/sources.list

RUN unzip -o /rmi-server.zip && chmod +x /rmi-server/bin/run.sh && chmod +x /rmi-server/lib/*.jar

EXPOSE 1199

WORKDIR /rmi-server/bin/

CMD ["sh","run.sh"]
