FROM openjdk:17-jdk-slim AS build

COPY pom.xml mvnw ./
COPY .mvn .mvn

COPY src src
RUN ./mvnw package

FROM openjdk:17-jdk-slim
WORKDIR DogsManagementSystem
COPY --from=build target/*.jar DogsManagementSystem.jar
ENTRYPOINT ["java", "-jar", "DogsManagementSystem.jar"]