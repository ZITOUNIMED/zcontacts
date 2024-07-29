FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts &&  mvn install 
COPY zcontacts/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 5000