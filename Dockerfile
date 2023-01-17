FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
VOLUME /opt/alist/data/
WORKDIR /opt/alist/
COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache aria2; \
    chmod +x /entrypoint.sh
    
ENV PUID=0 PGID=0 UMASK=022
EXPOSE 5244
ENTRYPOINT [ "/entrypoint.sh" ]