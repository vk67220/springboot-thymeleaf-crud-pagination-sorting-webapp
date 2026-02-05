# Use Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set maintainer label
LABEL maintainer="vk67220"

# Copy the built JAR file into the image
COPY target/springboot-thymeleaf-crud-web-app.jar /usr/app/

# Set the working directory inside the image
WORKDIR /usr/app/

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "springboot-thymeleaf-crud-web-app.jar"]


