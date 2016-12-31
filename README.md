# dnsmasq
Docker x86 image of dnsmasq with funcationalities as follow,

* DNS Server
* DHCP Server 
* Bind static ip with domain name
 

## Usage 
```
docker run -itd --restart=always --cap-add=NET_ADMIN --net=host -v /data/dnsmasq:/home/dnsmasq -e SERVER_LIST=8.8.8.8#53;114.114.114.114#53 -e HOST=my_hostname -e DHCP_RANGE=192.168.1.2,192.168.1.254 -e DHCP_RELAY_TIME=12h --name router_dnsmasq dorrypizza/dnsmasq
```

