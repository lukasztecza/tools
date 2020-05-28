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
- add to your nginx file under server
```
listen 443 ssl;
ssl_certificate /path_to_received_crt_file/server.crt;
ssl_certificate_key /path_to_private_key_generated_at_the_begining/server.key;
```
- you may want to add some ssl session caching
```
ssl_session_cache shared:SSL:10m;
ssl_session_timeout 10m;
keepalive_timeout 70;
```

### Let's Encrypt
follow this for automatic process
```
https://certbot.eff.org/lets-encrypt/debianbuster-nginx`
```
in case of docker containers architecture follow
```
https://medium.com/@pentacent/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71
```
or do it manually
```
sudo apt-get install certbot python-certbot-nginx
sudo certbot certonly --manual
```
this will require you to output challenge string in your app for given reqest and after success you will get two files
once completed just copy certificate files (crt and key) where web server is looking for them
