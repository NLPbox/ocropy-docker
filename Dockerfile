
FROM ubuntu:14.04

MAINTAINER Arne Neumann <nlpdocker.programming@arne.cl>

RUN apt-get update && apt-get install -y wget git

WORKDIR /opt
RUN git clone https://github.com/tmbdev/ocropy.git

WORKDIR /opt/ocropy
RUN apt-get install -y $(cat PACKAGES)
RUN wget -nd http://www.tmbdev.net/en-default.pyrnn.gz
RUN mv en-default.pyrnn.gz models/
RUN python setup.py install


