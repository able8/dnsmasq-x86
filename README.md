# dnsmasq
Docker x86 image of dnsmasq 

## Usage 

* Pull the code
```
git clone git@github.com:LaoLuMian/dnsmasq-x86.git
```
* Modify the configuration in `dnsmasq_conf/dnsmasq` and `dnsmasq_conf/dnsmasq.d`
```
cd dnsmasq-x86
vim dnsmasq_conf/dnsmasq/dnsmasq.conf
vim dnsmasq_conf/dnsmasq.d/xxx.conf
```
* Running
```
./dns_start.sh
```
