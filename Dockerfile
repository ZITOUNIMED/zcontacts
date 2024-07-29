FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts && mvn install 
RUN ls zcontacts
RUN 
#COPY ./target/*.jar app.jar
#ENTRYPOINT ["java","-jar","app.jar"]
ENTRYPOINT ["sh","-c","echo hello world"]
EXPOSE 5000