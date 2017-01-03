FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add --update bash dnsmasq && \
    rm -rf /var/cache/apk/*

COPY init ./
COPY dnsmasq.conf.bk /etc/

ENTRYPOINT ./init