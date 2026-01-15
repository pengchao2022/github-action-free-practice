FROM openjdk:17-ea-alpine

WORKDIR /app

# copy JAR file
COPY build/libs/*.jar app.jar

# run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

