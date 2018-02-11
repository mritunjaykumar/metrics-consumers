FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ENV KAFKA_SERVER=""
ADD ${JAR_FILE} app.jar
EXPOSE 8090
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--kafka.server=${KAFKA_SERVER}"]