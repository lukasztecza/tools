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
- choose how you want to confirm domain ownership (several options will be displayed to you)
- you can do it via email (you may want to set email forwarding in your registrar)
- you can upload a file to a server where domain points to (and make it accessible)
- but the simplest is dns-based method (which will be covered here)
- get cname record that you need to set up (from your registrar/certificate authority)
```
Domains to validate: your_domain
Type: CNAME Record
Host: some_value_to_put_as_host (some providers add your domain name to host value some do not, make sure to check that)
Target: some_value_to_put_as_target
```
- set these values and set the lowest possible TTL time
- it may take even several hours to validate your ownership so be patient
- once domain ownership is verified certificate authority will send you an email with crt file
- todo write the rest
