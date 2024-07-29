FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts &&  mvn install 
#COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","./target/zcontacts-0.0.1-SNAPSHOT.jar.jar"]
EXPOSE 5000