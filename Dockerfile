FROM maven:3.9.3-openjdk-17-slim
WORKDIR /app
COPY . .
RUN mvn package -DskipTests
CMD ["java", "-cp", "target/telegrambot-1.0-SNAPSHOT.jar", "com.example.telegrambot.MyBot"]
