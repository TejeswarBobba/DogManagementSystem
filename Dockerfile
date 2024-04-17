FROM maven:3.8.2-jdk-11 AS build
COPY . .
FROM openjdk:11-jdk-slim
COPY /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]
