FROM openjdk:11
RUN apt update && apt install maven -y
COPY ./ zcontacts
RUN cd zcontacts && mvn install 
ENTRYPOINT ["java","-jar","zcontacts/target/zcontacts-0.0.1-SNAPSHOT.jar"]
EXPOSE 5000