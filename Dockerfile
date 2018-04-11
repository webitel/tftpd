# Docker-tftpd
FROM ubuntu

LABEL maintainer="Vitaly Kovalyshyn"

RUN apt-get update && apt-get install -y --force-yes --no-install-recommends tftpd-hpa && rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/tftpboot

EXPOSE 69

CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot
