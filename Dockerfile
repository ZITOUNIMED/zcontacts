FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts && mvn install 
RUN ls zcontacts/target
COPY zcontacts/target/*.jar app.jar
RUN ls zcontacts/target
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 5000