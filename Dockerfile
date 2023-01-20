FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
VOLUME /opt/alist/data/
WORKDIR /opt/alist/
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
RUN chmod +x /entrypoint.sh /install.sh; \
  /install.sh

ENV PUID=0 PGID=0 UMASK=022
EXPOSE 5244 6800
ENTRYPOINT [ "/entrypoint.sh" ]