# nginx ssl set up
- buy a certifiacate or get one here
```
https://letsencrypt.org/
```
- create csr file (Certificate Signing Request) and RSA key file (Private Key) - it is good to name files with your server
```
cd /etc/ssl/some_dir
openssl req -new -newkey rsa:2048 -nodes -keyout your_domain_name.key -out your_domain_name.csr

Country Name (2 letter code) [AU]:CA
State or Province Name (full name) [Some-State]:some_state
Locality Name (eg, city) []:some_city
Organization Name (eg, company) [Internet Widgits Pty Ltd]:NA
Organizational Unit Name (eg, section) []:NA
Common Name (e.g. server FQDN or YOUR name) []:your_domain_name
Email Address []:your_email

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
An optional company name []:
```
- submit csr file to Certificate Authority in order to get activate certificate
