FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    kea \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/kea/ /var/lib/kea \
    && touch /var/run/kea/logger_lockfile

EXPOSE 67/udp

CMD ["/usr/sbin/kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]
