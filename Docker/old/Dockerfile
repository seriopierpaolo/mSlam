#first docker image to build a python env
#FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime
FROM nvidia/cuda:12.1.0-devel-ubuntu18.04
RUN mkdir -p /usr/src/workspace 
WORKDIR /usr/src/workspace 
ARG DEBIAN_FRONTEND=noninteractive
COPY ./Dependencies/dependencies.sh .
COPY ./Dependencies/orb_slam3.sh .

RUN \	
	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install git &&\
	apt-get -y install build-essential &&\
#	apt-get install wget -y &&\
	chmod +x dependencies.sh &&\		
	./dependencies.sh &&\
	./orb_slam3.sh 

CMD ["bash"]
