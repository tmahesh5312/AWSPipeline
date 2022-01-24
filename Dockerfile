FROM openjdk:11-jdk
COPY ./user_service-0.0.1-SNAPSHOT.jar /user_service-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
#ENTRYPOINT ["java", "-jar", "/user_service-0.0.1-SNAPSHOT.jar"]
EXPOSE 9090
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /user_service-0.0.1-SNAPSHOT.jar" ]
