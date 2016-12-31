# dnsmasq
run dnsmasq in docker container on x86 with DNS server, DHCP server, custom static ip and domain in file '/home/dnsmasq/hosts'.

## How to use?
```
docker run -itd --restart=always --cap-add=NET_ADMIN --net=host -v [ directory for dhcp leases file ]:/home/dnsmasq -v [ directory that stores file 'hosts']:/home/dnsmasq -e SERVER_LIST=[ your dns server address ] -e DOMAIN=[ your hostname ] -e DHCP_RANGE=[ your DHCP range, like 'xxx.xxx.xxx.3,xxx.xxx.xxx.100' ] -e DHCP_RELAY_TIME=[ dhcp relay time ] --name router_dnsmasq_1 dorrypizza/dnsmasq
```