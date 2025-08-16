FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests
CMD ["java", "-cp", "target/telegrambot-1.0-SNAPSHOT.jar", "com.example.telegrambot.MyBot"]
