
FROM maven:3.5-jdk-8

RUN mkdir -p /home/cloud_user/deploy/application

VOLUME ["/home/cloud_user/deploy/application"]

WORKDIR /home/cloud_user/deploy/application

ADD . .

ENTRYPOINT ["mvn","clean","package"]
