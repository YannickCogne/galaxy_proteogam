FROM debian:wheezy
MAINTAINER Yannick Cogne
# make sure the package repository is up to date
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bzip2 	
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libncurses5-dev      
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y  libncursesw5-dev 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y  libboost-all-dev 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y   g++ 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y make
WORKDIR /usr/bin/
RUN wget http://netix.dl.sourceforge.net/project/transcriptomeassembly/BinPacker_1.0.tar.gz &&\
 tar xvf BinPacker_1.0.tar.gz &&\
 cd ./BinPacker_1.0 &&\
 ./configure &&\
 make &&\
  ln -s /usr/bin/BinPacker_1.0/BinPacker /usr/bin/binpacker

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y perl
RUN chmod a+xr -R /usr/bin/BinPacker_1.0/
RUN mkdir /home/results
RUN chmod a+xwr -R /home/results
RUN apt-get clean