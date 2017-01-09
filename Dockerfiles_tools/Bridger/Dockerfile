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
RUN wget  --no-check-certificate 'https://netcologne.dl.sourceforge.net/project/rnaseqassembly/Bridger_r2014-12-01.tar.gz' && \
    tar zxvf Bridger_r2014-12-01.tar.gz && \
    cd Bridger_r2014-12-01 && \
    ./configure && \
    make && \
    ln -s /usr/bin/Bridger_r2014-12-01/Bridger.pl /usr/bin/bridger
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y perl
RUN chmod a+xr -R /usr/bin/Bridger_r2014-12-01/
RUN mkdir /home/results
RUN chmod a+xwr -R /home/results
RUN apt-get clean