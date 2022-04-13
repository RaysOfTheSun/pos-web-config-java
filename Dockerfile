FROM maven AS MAVEN_BUILD
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn clean package

FROM openjdk:11
ARG JAR_FILE=/build/target/*.jar
COPY --from=MAVEN_BUILD $JAR_FILE pos-web-config-java.jar
ENTRYPOINT ["java", "-jar", "/pos-web-config-java.jar"]
