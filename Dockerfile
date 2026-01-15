FROM openjdk:17-slim

WORKDIR /app

# copy JAR file
COPY build/libs/*.jar app.jar

# run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

