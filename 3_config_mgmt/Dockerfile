FROM ubuntu:14.04

RUN apt-get -qq update && \
  apt-get -y install chef

COPY cookbooks /opt/cookbooks

RUN cd /opt && chef-client -z -o ditto_ntp

CMD ["/usr/sbin/ntpd", "-n"]
