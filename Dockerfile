# Stage 1: Build with maven
FROM maven:3.8.1-openjdk-17-slim as builder
MAINTAINER M.Naeem Akhtar

LABEL maintainer="M.Naeem Akhtar <mnaeemakhtar@gmail.com"
LABEL version="1.0"
LABEL description="My Spring Boot Learning application"

WORKDIR /app
COPY pom.xml .
COPY . .
RUN mvn package -DskipTests

# Stage 2: DockerFile - Create the Image
FROM bellsoft/liberica-runtime-container:jre-17-stream-musl

COPY --from=builder /app/target/bookstore.jar bookstore.jar
EXPOSE 8080
CMD ["java","-jar","bookstore.jar"]