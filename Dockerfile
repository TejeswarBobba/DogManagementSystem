FROM openjdk:17-jdk-slim AS build

COPY pom.xml mvnw ./
COPY .mvn .mvn

COPY src src

FROM openjdk:17-jdk-slim
WORKDIR demo
COPY --from=build target/*.jar DogsManagementSystem.jar
ENTRYPOINT ["java", "-jar", "DogsManagementSystem.jar"]