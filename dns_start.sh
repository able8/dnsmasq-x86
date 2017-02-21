docker run -itd --restart=always --cap-add=NET_ADMIN --net=host -v /dorry_data/dnsmasq:/etc/dnsmasq -v /dorry_data/dnsmasq.d:/etc/dnsmasq.d --name test_dnsmasq dnsmasq:test
