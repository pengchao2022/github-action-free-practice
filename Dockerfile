FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# copy JAR file
COPY . .

RUN find . -name "*.jar" -exec mv {} app.jar \; 2>/dev/null

# run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

