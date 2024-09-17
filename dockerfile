
FROM openjdk:17-jdk-slim

LABEL maintainer="UpsilonCorp@gmail.com"

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y grep

#COPY libs/opentelemetry-javaagent-1.27.0.jar opentelemetry-javaagent-1.27.0.jar
COPY target/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar", "configserver-0.0.1-SNAPSHOT.jar"]