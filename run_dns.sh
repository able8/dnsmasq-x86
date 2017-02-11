sudo mkdir -p /dorry_data/dnsmasq
sudo cp dns-server /dorry_data/dnsmasq/
sudo cp accelerated-domains.china.conf /dorry_data/dnsmasq/
docker run -itd --restart=always --cap-add=NET_ADMIN --net=host -v /dorry_data/dnsmasq:/home/dnsmasq -e DOMAIN=my_domain -e DHCP_RANGE=192.168.3.2,192.168.3.254 -e DHCP_RELAY_TIME=12h --name router_dnsmasq dnsmasq:test
