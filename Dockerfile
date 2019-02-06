#pull base image
FROM openjdk:8-jdk-alpine
RUN mvn clean install
COPY . .
EXPOSE 8080
#default command
CMD java -jar ./target/hello-world-0.1.0.jar
#copy hello world to docker image
#ADD ./data/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar
