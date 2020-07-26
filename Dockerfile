FROM openjdk:8
COPY target/datacentric-1.0-SNAPSHOT.jar /app.jar
WORKDIR /
ENTRYPOINT ["java", "-cp", "app.jar", "HelloWorld"]