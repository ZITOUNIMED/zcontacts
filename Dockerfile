FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts &&  mvn install 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 5000