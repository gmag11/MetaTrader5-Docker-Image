FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine318

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Metatrader5 Docker:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="github@gmartin.net"

# title
ENV TITLE=Metatrader5

ENV WINEPREFIX="/config/.wine"

#install wine and dependencies
RUN apk update && apk add wine \
    && rm -rf /apk /tmp/* /var/cache/apk/*

# add local files
COPY /Metatrader /Metatrader
RUN chmod +x /Metatrader/start.sh
COPY /root /

# remove sudo
RUN apk del sudo

# ports and volumes
EXPOSE 3000

VOLUME /config
    
