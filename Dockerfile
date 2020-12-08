FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y default-jdk maven git
RUN apt install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
RUN apt-get update
RUN apt-cache policy docker-ce
RUN apt -y install docker-ce
RUN apt-get clean