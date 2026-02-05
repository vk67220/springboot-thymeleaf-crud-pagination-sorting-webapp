# Use Java 17 base image
#FROM openjdk:17

# Set maintainer label
#LABEL maintainer="vk67220"

# Copy the built JAR file into the image
#COPY target/springboot-thymeleaf-crud-web-app.jar /usr/app/

# Set the working directory inside the image
#WORKDIR /usr/app/

# Expose the application port
#EXPOSE 8080

# Run the Spring Boot application
#ENTRYPOINT ["java", "-jar", "springboot-thymeleaf-crud-web-app.jar"]


# Use supported Java 17 image
FROM eclipse-temurin:17-jdk-alpine

# Metadata
LABEL maintainer="vk67220"

# Set working directory
WORKDIR /usr/app

# Copy Spring Boot JAR
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
