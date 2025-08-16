FROM maven:3.9.2-eclipse-temurin-17
WORKDIR /app
COPY . .
RUN mvn package -DskipTests
CMD ["java", "-cp", "target/telegrambot-1.0-SNAPSHOT.jar", "com.example.telegrambot.MyBot"]
