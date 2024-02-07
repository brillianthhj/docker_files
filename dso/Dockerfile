FROM --platform=linux/amd64 ubuntu:18.04

MAINTAINER brillianthhj

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y

RUN apt install -y build-essential && \
    apt install -y cmake && \
    apt install -y git && \
    apt install -y sudo && \
    apt install -y wget && \
    apt install -y ninja-build && \
    apt install -y software-properties-common && \
    apt install -y python3 && \
    apt install -y python3-pip && \
    apt install -y ssh && \
    apt install -y gcc && \
    apt install -y g++ && \
    apt install -y gdb && \
    apt install -y cmake && \
    apt install -y rsync && \
    apt install -y tar && \
    apt install -y x11-utils && \
    apt install -y x11-apps && \
    apt install -y zip && \
	apt install -y vim-gtk3 && \
    apt clean

# DSO git clone
RUN git clone https://github.com/JakobEngel/dso.git

# suitesparse and eigen3 (required)
RUN apt install -y libsuitesparse-dev && \
	apt install -y libeigen3-dev && \
	apt install -y libboost-all-dev

# OpenCV
RUN apt install -y libopencv-dev

# Pangolin
RUN apt install -y mesa-utils && \
    apt install -y libgl1-mesa-glx && \
    apt install -y libglu1-mesa-dev && \
    apt install -y libglew-dev &&\
    apt install -y libglvnd-dev &&\
    apt install -y libgl1-mesa-dev &&\
    apt install -y libegl1-mesa-dev &&\
    apt install -y mesa-common-dev

RUN wget https://github.com/stevenlovegrove/Pangolin/archive/refs/tags/v0.6.zip &&\
    unzip v0.6.zip &&\
    cd Pangolin-0.6 &&\
    mkdir build && cd build &&\
    cmake .. &&\
    make -j8 &&\
    make install &&\
    cd ../../
    
# ziplib (recommended)
RUN apt install -y zlib1g-dev && \
	cd dso/thirdparty && \
	tar -zxvf libzip-1.1.1.tar.gz && \
	cd libzip-1.1.1/ && \
	./configure && \
	make -j8 && \
	make install && \
	cp lib/zipconf.h /usr/local/include/zipconf.h
