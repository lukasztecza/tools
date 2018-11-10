### Client
- get openvpn
```
https://openvpn.net/community-downloads/
```
- get vpn.crt generated on servere machine for client
- get vpn.ovpn configuration file or create one
```
auth-user-pass
 client
 dev tun 
 proto udp 
 remote ip_address port_number
 resolv-retry infinite
 nobind
 persist-key
 persist-tun
 ca vpn.crt  
 ns-cert-type server
 cipher AES-256-CBC  # AES 
 comp-lzo
 verb 3
```
- for ubuntu users follow
```
https://github.com/jonathanio/update-systemd-resolved
```
- after following installation add to vpn.ovpn
```
 setenv PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
 script-security 2
 up /etc/openvpn/scripts/update-systemd-resolved
 down /etc/openvpn/scripts/update-systemd-resolved
 down-pre
```
