# dnsmasq
Docker x86 image of dnsmasq with funcationalities as follow,

* DNS Server at port 53, with up layer DNS servers in `/dorry_data/dnsmasq/dns-server` .
* DHCP Server at port 67, DHCP leases file in `/dorry_data/dnsmasq/dhcp.leases`.
* Bind static ip with domain name by file `/dorry_data/dnsmasq/hosts`.

## Usage 
```
docker run -itd --restart=always --cap-add=NET_ADMIN --net=host -v /dorry_data/dnsmasq:/home/dnsmasq -e DOMAIN=my_domain -e DHCP_RANGE=192.168.1.2,192.168.1.254 -e DHCP_RELAY_TIME=12h --name router_dnsmasq dorrypizza/dnsmasq
```

