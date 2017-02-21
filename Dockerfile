FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add --update bash dnsmasq && \
    rm -rf /var/cache/apk/*

RUN echo "dnsmasq starting ..."
ENTRYPOINT ["dnsmasq", "-k"] 
