# Use an official OpenJDK image as a base
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/database_service_project-0.0.8.jar app.jar

# Expose port 8081 (change if necessary)
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
