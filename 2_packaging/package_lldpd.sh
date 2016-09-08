#!/bin/sh

mkdir /tmp/installdir

cd /tmp/lldpd-0.7.11

./configure --prefix=/usr

make
make install DESTDIR=/tmp/installdir

fpm -s dir -t deb -n lldpd \
  -v 2.7.11-2 \
  --iteration 8u2 \
  -C /tmp/installdir \
  -p /output \
  -d "debhelper >= 5" -d "cdbs >= 0.4.122" -d "autotools-dev" -d "dh-autoreconf" \
  -d "libsnmp-dev" -d "libpci-dev" -d "libxml2-dev" -d "libevent-dev" -d "libreadline-dev" \
  -d "libbsd-dev" -d "pkg-config" -d "dh-systemd >= 1.5" \
  .

