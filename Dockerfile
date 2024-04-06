FROM openjdk:11
WORKDIR /app
COPY . /app
RUN chmod +x wait-for-it.sh
CMD ["./wait-for-it.sh", "mysql:3306", "--", "redis:6379", "--", "java", "-jar", "HibernateFinalProject-1.0-SNAPSHOT-jar-with-dependencies.jar"]
