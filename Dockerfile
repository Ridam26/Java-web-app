FROM openjdk:17
ARG JAR_FILE=build/libs/
COPY ${JAR_FILE}/demo-0.0.1-SNAPSHOT.jar /app/
COPY ${JAR_FILE}/demo-0.0.1-SNAPSHOT-plain.jar /app/
WORKDIR /app
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]