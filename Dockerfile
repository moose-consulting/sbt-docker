FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk wget gnupg ca-certificates
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update
RUN apt-get install -y sbt=1.3.9
RUN sbt --version
