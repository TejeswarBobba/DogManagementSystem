# Use official OpenJDK 11 image as base
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/DogsManagementSystem-0.0.1-SNAPSHOT.jar /app/DogsManagementSystem.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "DogsManagementSystem.jar"]