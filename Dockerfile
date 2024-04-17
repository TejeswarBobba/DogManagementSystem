FROM openjdk:17-jdk-alpine
COPY target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
ENTRYPOINT ["java", "-jar", "DogsManagementSystem.jar"]