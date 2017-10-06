FROM gocd/gocd-agent-ubuntu-16.04:v17.5.0


RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install wget unzip
RUN apt-get -y install default-jdk 

RUN wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip
RUN mkdir /opt/gradle
RUN unzip -d /opt/gradle gradle-3.4.1-bin.zip
ENV PATH="${PATH}:/opt/gradle/gradle-3.4.1/bin"

RUN wget https://github.com/wendyi/talisman/releases/download/0.0.1/linux
RUN mv linux /usr/local/bin/talisman
RUN chmod +x /usr/local/bin/talisman
