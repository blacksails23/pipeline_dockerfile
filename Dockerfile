FROM ubuntu:18.04 as build
RUN apt-get update
RUN apt-get install -y default-jdk maven git
WORKDIR /home/ubuntu
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/ubuntu/boxfuse-sample-java-war-hello
RUN mvn package
