FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add --update bash dnsmasq && \
    rm -rf /var/cache/apk/*

ADD init ./

RUN rm /etc/dnsmasq.conf

ENTRYPOINT ./init