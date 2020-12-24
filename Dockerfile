FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

VOLUME /storages


#FROM adoptopenjdk:8-jre-hotspot as builder
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} application.jar
#RUN java -Djarmode=layertools -jar application.jar extract
#
#FROM adoptopenjdk:8-jre-hotspot
#COPY --from=builder dependencies/ ./
#COPY --from=builder snapshot-dependencies/ ./
#COPY --from=builder spring-boot-loader/ ./
#COPY --from=builder application/ ./
#EXPOSE 8080
#ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]

#mvn package -Dspring.profiles.active=prod  -DskipTests
#docker build -t imatch/backend ./
