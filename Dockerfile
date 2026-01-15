FROM openjdk:17-jdk-slim

WORKDIR /app

# copy JAR file
COPY build/libs/*.jar app.jar

# run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

