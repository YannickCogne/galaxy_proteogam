FROM bgruening/galaxy-stable
MAINTAINER Yannick Cogne
WORKDIR /galaxy-central
RUN mkdir $GALAXY_ROOT/tools/docker
ADD *.xml $GALAXY_ROOT/tools/docker/
ADD job_conf.xml.sample_basic $GALAXY_ROOT/config/job_conf.xml
ADD tool_conf.xml.sample $GALAXY_ROOT/config/tool_conf.xml
RUN echo "galaxy  ALL = (root) NOPASSWD: SETENV: /usr/bin/docker" >> /etc/sudoers
ADD  docker_pulling.sh $GALAXY_ROOT/
RUN chmod +x docker_pulling.sh
VOLUME ["/export/", "/data/", "/var/lib/docker"]
RUN mkdir $GALAXY_CONFIG_DIR/web/img_web/
ADD img_web/* $GALAXY_CONFIG_DIR/web/img_web/

ADD welcome.html $GALAXY_CONFIG_DIR/web/welcome.html
# Expose port 80 (webserver), 21 (FTP server), 8800 (Proxy)
EXPOSE :80
EXPOSE :21
EXPOSE :8800

# Autostart script that is invoked during container start
CMD ["/usr/bin/startup"]