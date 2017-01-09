FROM debian:wheezy
MAINTAINER Yannick Cogne
# make sure the package repository is up to date
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ruby
WORKDIR /usr/bin/
RUN wget  --no-check-certificate https://bintray.com/artifact/download/blahah/generic/transrate-1.0.3-linux-x86_64.tar.gz
RUN tar xvf transrate-1.0.3-linux-x86_64.tar.gz
RUN chmod a+xr -R /usr/bin/transrate-1.0.3-linux-x86_64/
RUN /usr/bin/transrate-1.0.3-linux-x86_64/transrate --install-deps ref
RUN mkdir /home/results
RUN chmod a+xwr -R /home/results
RUN apt-get clean