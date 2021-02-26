FROM kalilinux/kali

RUN apt-get update && apt-get install -y \
  build-essential \
  pkg-config \
  git \
  libnl-genl-3-dev \
  libssl-dev \
  net-tools \
  procps \
  iproute2 \
  iptables \
  iputils-ping \
  isc-dhcp-client \
  isc-dhcp-common \
  nftables \
  aircrack-ng \
  ca-certificates \
  cron \
  git \
  iw \
  pciutils \
  ssl-cert \
  tcpreplay \
  unzip \
  wpasupplicant \
  hostapd \
&& rm -rf /var/lib/apt/lists/*

COPY wep.conf /opt/dsp/ap.conf
CMD  hostapd /opt/dsp/ap.conf && /bin/bash

