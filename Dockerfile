FROM maven
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn clean package

FROM openjdk:11
ARG JAR_FILE=/target/*.jar
COPY $JAR_FILE pos-web-config-java.jar
ENTRYPOINT ["java", "-jar", "pos-web-config-java.jar"]
