FROM openjdk:8-alpine

LABEL maintainer="gesse_carlos"

ARG JAR_FILE=target/workshop-api.jar

WORKDIR /opt/app

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]