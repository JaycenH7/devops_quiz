# 1. build image
# docker build -t ditto-2 .
#
# 2. create debian package and output to /tmp on host
# docker run -ti --rm -v /tmp:/output ditto-2

FROM ubuntu:14.04

RUN apt-get -qq update && \
  apt-get -y install ruby ruby-dev make xz-utils && \
  gem install fpm

COPY package_lldpd.sh /opt
COPY lldpd_0.7.11.orig.tar.gz /tmp

RUN tar zxf /tmp/lldpd_0.7.11.orig.tar.gz -C /tmp 

VOLUME ["/output"]

CMD ["bash", "/opt/package_lldpd.sh"]
