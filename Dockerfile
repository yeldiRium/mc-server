FROM ubuntu:bionic
WORKDIR /usr/app

EXPOSE 25565

RUN apt -y update
RUN apt -y install curl unzip openjdk-8-jre-headless

COPY setup.sh /usr/app
RUN ./setup.sh

COPY eula.txt /usr/app/temp-server/eula.txt

COPY run.sh /usr/app
RUN chmod a+x ./run.sh
CMD ./run.sh
